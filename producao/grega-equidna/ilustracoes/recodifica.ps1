# Recodifica um download bruto do Gemini para PNG real.
# Uso: .\recodifica.ps1 -Src <arquivo do download> -Conversa <id> -Nome <nome-do-asset>
param([Parameter(Mandatory=$true)][string]$Src,
      [Parameter(Mandatory=$true)][string]$Conversa,
      [Parameter(Mandatory=$true)][string]$Nome)

Add-Type -AssemblyName System.Drawing
$base   = "E:\books\producao\grega-equidna\ilustracoes"
$brutos = Join-Path $base "brutos"
New-Item -ItemType Directory -Force $brutos | Out-Null

$ext  = [IO.Path]::GetExtension($Src)
$cru  = Join-Path $brutos "$Conversa$ext"
Copy-Item $Src $cru -Force

$img = [System.Drawing.Image]::FromFile($cru)
$w = $img.Width; $h = $img.Height
$out = Join-Path $base "$Nome.png"
$img.Save($out, [System.Drawing.Imaging.ImageFormat]::Png)
$img.Dispose()

# verificacao de assinatura PNG real (\x89PNG), nao a extensao
$sig = [byte[]](Get-Content $out -Encoding Byte -TotalCount 4)
$ok = ($sig[0] -eq 0x89 -and $sig[1] -eq 0x50 -and $sig[2] -eq 0x4E -and $sig[3] -eq 0x47)

[pscustomobject]@{
  Asset     = $Nome
  Conversa  = $Conversa
  Bruto     = $cru
  PNG       = $out
  Dimensoes = "$w x $h"
  Proporcao = [math]::Round($w / $h, 3)
  PNGreal   = $ok
  MD5bruto  = (Get-FileHash $cru -Algorithm MD5).Hash
  MD5png    = (Get-FileHash $out -Algorithm MD5).Hash
} | Format-List
