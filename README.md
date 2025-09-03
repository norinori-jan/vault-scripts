# vault-scripts

録音ファイルの用途別振り分けや、Vault群の運用自動化を目的としたスクリプト集です。

## 構成
- `recording-sort.ps1`：録音ファイルを用途別にVaultへ移動
- `vault-init.ps1`：Vault初期化スクリプト（予定）
- `.gitignore-template.md`：Vault用除外ルールテンプレート

## 運用フロー
1. 録音は `vaults/Recording` に保存
2. ファイル名に「業務」「思考」「日常」などの用途タグを含める
3. `recording-sort.ps1` を実行 → Vaultへ自動振り分け
4. Dataviewやテンプレートでノート化・抽出

## Git管理方針
- スクリプト本体のみを管理対象とし、実行ログや一時ファイルは除外
- `.gitignore` により `.ps1~`, `*.log`, `__pycache__/` などを除外

## 今後の展望
- 録音テンプレート生成スクリプトの追加
- Vault群の一括pushスクリプトの設計