# 05 AWS Network

## 目的

Terraform で AWS ネットワークを設計する。

## 想定構成

```text
VPC
├── Public Subnet
│   └── Internet Gateway
└── Private Subnet
```

必要に応じて Route Table / Security Group などを追加する。

## レビュー観点

- CIDR 設計
- Public / Private の境界
- Security Group
- Multi-AZ
- Naming
- Module の責務
