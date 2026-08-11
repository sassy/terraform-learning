# 06 Security

## 目的

Terraform におけるセキュリティ設計を学ぶ。

## 課題

以下を Terraform で設計し、過剰権限や公開範囲をレビューする。

- IAM Role
- IAM Policy
- Security Group
- Secret の扱い

## NG例

- Access Key を `.tf` に直接記述
- Secret を Git にコミット
- `0.0.0.0/0` を無条件で許可
- 必要以上に強い IAM Policy
