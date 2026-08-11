# 08 CI

## 目的

Terraform を CI/CD に組み込む。

## 最低限

Pull Request:

```text
fmt
  ↓
validate
  ↓
plan
```

Merge 後:

```text
apply
```

## レビュー観点

- 誰が apply できるか
- Plan と Apply の間で State が変わったら？
- Secret はどう渡すか？
- 本番 apply に承認を入れるべきか？
