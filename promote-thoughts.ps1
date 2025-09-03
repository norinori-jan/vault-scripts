$sourceVault = "C:\Users\norin\vaults\audio-memo-vault"
$targetVault = "C:\Users\norin\vaults\chiteki-vault"

# 昇格対象タグ
$tags = @("問い", "抽象", "概念")

# 対象ファイルを抽出
$files = Get-ChildItem "$sourceVault\03_Reflections" -Filter *.md

foreach ($file in $files) {
    $content = Get-Content $file.FullName
    foreach ($tag in $tags) {
        if ($content -match "#$tag") {
            $destination = "$targetVault\03_Reflections\$($file.Name)"
            Copy-Item $file.FullName $destination -Force
            Write-Host "Promoted: $($file.Name) → $destination"
            break
        }
    }
}