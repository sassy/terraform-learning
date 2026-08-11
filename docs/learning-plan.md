# Terraform 学習プログラム

目安: 6〜8週間。1日30〜60分程度を想定。

## Phase 1: Terraform の基本

### 学ぶこと
- IaC とは何か
- Declarative configuration
- Provider / Resource / Data Source
- `init`
- `plan`
- `apply`
- `destroy`
- HCL

### 課題
`exercises/01-basics` で小さなリソースを作る。

### 理解チェック
- Terraform は何を宣言しているのか
- Terraform はどうやって依存関係を判断するのか
- `plan` は何を比較しているのか

---

## Phase 2: State

### 学ぶこと
- State の役割
- Resource Address
- State と実インフラの関係
- Drift
- Lock file
- Backend

### 課題
`exercises/02-state`

### 理解チェック
- State が消えると何が起こるか
- 手動変更するとどうなるか
- `.terraform.lock.hcl` は何のためにあるか

---

## Phase 3: Configuration

### 学ぶこと
- Variables
- Outputs
- Locals
- Expressions
- `for`
- `for_each`
- `count`
- Dynamic blocks
- Data Sources

### 課題
`exercises/03-variables`

---

## Phase 4: Module

### 学ぶこと
- Root Module
- Child Module
- Input / Output
- Module の責務
- Registry Module
- Module versioning

### 課題
`exercises/04-modules`

設計レビューでは「Module に何を入れるべきか」を考える。

---

## Phase 5: AWS Infrastructure

### 学ぶこと
- VPC
- Subnet
- Route Table
- Security Group
- IAM
- EC2 / ECS など

### 課題
`exercises/05-aws-network`
`exercises/06-security`

最初から巨大な構成を作らず、VPC → Security → Compute の順で進める。

---

## Phase 6: 運用

### 学ぶこと
- Remote State
- Backend
- Environment 分離
- CI/CD
- Plan の自動化
- Secrets
- Policy / Security scanning

### 課題
`exercises/07-remote-state`
`exercises/08-ci`

---

## Phase 7: 変更とリファクタリング

### 学ぶこと
- `import`
- `moved`
- Resource rename
- Module 化
- State migration
- Replace

### 課題

既存構成を壊さずに、

```text
resource -> module
resource_a -> resource_b
```

のような変更を行う。

---

## Phase 8: 総合課題

`projects/web-app-infra` に Web アプリケーション用インフラを設計する。

例:

```text
Internet
   |
Load Balancer
   |
Compute
   |
Database
```

ただし、最初から全てを実装するのではなく、

1. 要件定義
2. 構成図
3. Terraform 設計
4. Module 設計
5. State / Backend 設計
6. Security 設計
7. CI/CD
8. Review

の順に進める。

## 最終到達目標

Terraform のコードを書けるだけでなく、

> 「この Terraform 構成にはどんな運用・セキュリティ・可用性・変更容易性の問題があるか」

をレビューできる状態を目指す。
