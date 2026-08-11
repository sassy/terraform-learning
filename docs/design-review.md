# Terraform 設計レビュー観点

## 1. Resource

- Resource の責務は適切か
- `count` と `for_each` の使い分けは適切か
- Resource 名は意味を持っているか
- 不要な Resource がないか

## 2. Module

- Module の責務は明確か
- Module が大きすぎないか
- Module 間の依存関係が複雑になっていないか
- Input / Output は適切か
- 再利用する価値があるか

## 3. State

- State の保存場所は適切か
- State の共有方法は適切か
- State Lock は考慮されているか
- State に機密情報が入る可能性を考慮しているか

## 4. Security

- IAM 権限が過剰ではないか
- Secret をコードに書いていないか
- Security Group が過度に開放されていないか
- Public resource が必要以上に存在しないか

## 5. Reliability

- Multi-AZ が必要か
- Backup はあるか
- Recovery 方法は明確か
- Terraform の失敗時にどう復旧するか

## 6. Operations

- CI/CD から `plan` / `apply` する設計か
- 誰が apply できるか
- Drift をどう検知するか
- Provider / Module のバージョン管理は適切か

## 7. Changeability

- Resource の rename で意図しない destroy が起きないか
- `moved` が必要ではないか
- Module 化によって State migration が必要にならないか
- Environment 間の差分管理が複雑になっていないか
