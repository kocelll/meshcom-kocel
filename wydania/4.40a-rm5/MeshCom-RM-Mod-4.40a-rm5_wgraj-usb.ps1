# kocel💣 MeshCom RM Mod — wgrywanie firmware kablem USB (Windows, PowerShell)
# Pełna instalacja z ZACHOWANIEM ustawień radia (znak, Wi-Fi, grupy): kopia ustawień
# (NVS 0x9000, 20 kB) -> wgranie pliku "pelna instalacja" od 0x0 -> przywrócenie ustawień.
# Użycie (w folderze z plikami firmware):
#   powershell -ExecutionPolicy Bypass -File .\wgraj-usb.ps1
#   powershell -ExecutionPolicy Bypass -File .\wgraj-usb.ps1 -Port COM27 -Plik "...pelna instalacja.bin"
#   dodaj -KasujUstawienia, żeby zacząć od czystych ustawień.
param([string]$Port, [string]$Plik, [switch]$KasujUstawienia)
$ErrorActionPreference = 'Stop'
Set-Location -LiteralPath $PSScriptRoot

function Find-Esptool {
  $exe = Join-Path $PSScriptRoot 'esptool.exe'
  if (Test-Path -LiteralPath $exe) { return @($exe) }
  $c = Get-Command esptool.exe -ErrorAction SilentlyContinue; if ($c) { return @($c.Source) }
  foreach ($py in @("$env:USERPROFILE\RadioMesh\.pio-venv\Scripts\python.exe", "$env:USERPROFILE\.platformio\penv\Scripts\python.exe")) {
    $pk = "$env:USERPROFILE\.platformio\packages\tool-esptoolpy"
    if ((Test-Path $py) -and (Test-Path $pk)) { $env:PYTHONPATH = $pk; return @($py, '-m', 'esptool') }
  }
  foreach ($py in @('py', 'python')) {
    $c = Get-Command $py -ErrorAction SilentlyContinue
    if ($c) { & $c.Source -m esptool version *> $null; if ($LASTEXITCODE -eq 0) { return @($c.Source, '-m', 'esptool') } }
  }
  return $null
}
function Run-Esptool([string[]]$a) {
  $cmd = $script:ET[0]; $pre = @(); if ($script:ET.Count -gt 1) { $pre = $script:ET[1..($script:ET.Count-1)] }
  foreach ($baud in @('460800', '115200')) {
    & $cmd @pre --port $script:Port -b $baud @a
    if ($LASTEXITCODE -eq 0) { return }
    Write-Host "Nie wyszlo przy $baud — probuje wolniej / przytrzymaj BOOT i nacisnij RST" -ForegroundColor Yellow
  }
  throw "esptool zakonczyl sie bledem"
}

$script:ET = Find-Esptool
if (-not $script:ET) {
  Write-Host "Brak programu esptool. Pobierz esptool dla Windows: https://github.com/espressif/esptool/releases" -ForegroundColor Red
  Write-Host "(plik esptool-...-windows-amd64.zip), rozpakuj i wloz esptool.exe do tego folderu, potem uruchom ponownie." -ForegroundColor Red
  exit 1
}
if (-not $Port) {
  $ports = [System.IO.Ports.SerialPort]::GetPortNames() | Sort-Object -Unique
  if ($ports.Count -eq 1) { $Port = $ports[0] } else { Write-Host ("Porty: " + ($ports -join ', ')); $Port = Read-Host 'Podaj port radia (np. COM27)' }
}
$script:Port = $Port
if (-not $Plik) {
  $files = @(Get-ChildItem -LiteralPath $PSScriptRoot -Filter '*pelna instalacja.bin' | Sort-Object Name)
  if ($files.Count -eq 0) { Write-Host 'Brak pliku "... - pelna instalacja.bin" w tym folderze.' -ForegroundColor Red; exit 1 }
  for ($i = 0; $i -lt $files.Count; $i++) { Write-Host ("{0,2}. {1}" -f ($i + 1), $files[$i].Name) }
  $n = [int](Read-Host 'Numer pliku dla Twojej plytki')
  $Plik = $files[$n - 1].FullName
}
if (-not (Test-Path -LiteralPath $Plik)) { Write-Host "Nie ma pliku: $Plik" -ForegroundColor Red; exit 1 }
Write-Host "Radio: $Port  Plik: $(Split-Path $Plik -Leaf)" -ForegroundColor Cyan

$backup = Join-Path $PSScriptRoot ("ustawienia-radia-{0}-{1:yyyyMMdd-HHmmss}.bin" -f $Port, (Get-Date))
if (-not $KasujUstawienia) {
  Write-Host '1/3 Kopia ustawien radia...' -ForegroundColor Cyan
  Run-Esptool @('--after', 'no_reset', 'read_flash', '0x9000', '0x5000', $backup)
}
Write-Host '2/3 Wgrywanie firmware...' -ForegroundColor Cyan
Run-Esptool @('--after', 'no_reset', 'write_flash', '0x0', $Plik)
if (-not $KasujUstawienia) {
  Write-Host '3/3 Przywracanie ustawien...' -ForegroundColor Cyan
  Run-Esptool @('write_flash', '0x9000', $backup)
  Write-Host "Kopia ustawien zostaje w pliku: $(Split-Path $backup -Leaf)"
} else {
  Run-Esptool @('run')
}
Write-Host 'Gotowe. Radio sie restartuje.' -ForegroundColor Green
