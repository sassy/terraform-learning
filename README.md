# terraform-learning

Terraform を実践しながら学ぶためのアウトプット用リポジトリ。

## 学習方針

「Terraform の文法を覚える」ことではなく、次の3つを身につけることを目的とする。

1. Terraform の基本的な実行モデルを理解する
2. 小さなインフラを自分で設計・構築・変更・破棄できる
3. 設計レビューで Terraform / IaC の問題点を指摘できる

## 学習ロードマップ

- [ ] 01. IaC と Terraform の基本
- [ ] 02. HCL と基本リソース
- [ ] 03. State と plan/apply
- [ ] 04. Variables / Outputs / Locals
- [ ] 05. Data Source / Provider
- [ ] 06. Module
- [ ] 07. AWS ネットワーク
- [ ] 08. IAM / セキュリティ
- [ ] 09. Remote State / Backend
- [ ] 10. Environment 設計
- [ ] 11. Testing / Validation / Formatting
- [ ] 12. CI/CD
- [ ] 13. Import / Moved / Refactoring
- [ ] 14. 設計レビュー
- [ ] 15. 総合課題

## ディレクトリ

```text
terraform-learning/
├── README.md
├── docs/
│   ├── learning-plan.md
│   ├── notes/
│   └── design-review.md
├── exercises/
│   ├── 01-basics/
│   ├── 02-state/
│   ├── 03-variables/
│   ├── 04-modules/
│   ├── 05-aws-network/
│   ├── 06-security/
│   ├── 07-remote-state/
│   └── 08-ci/
├── projects/
│   └── web-app-infra/
├── modules/
│   └── example/
└── .gitignore
```

## 基本コマンド

```bash
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
```

学習中は `plan` の結果を読むことを重視する。

## アウトプットのルール

各 exercise では最低限、次を `README.md` に残す。

- 何を作ったか
- なぜこの構成にしたか
- Terraform が何を管理しているか
- `plan` で何が起きるか
- State は何を持っているか
- やってみて分からなかったこと
- 設計レビューなら何を指摘するか

## 注意

AWS のリソースを作る課題では、料金が発生する可能性がある。
不要になったリソースは必ず `terraform destroy` する。
認証情報や `terraform.tfstate` などの機密情報は Git にコミットしない。
