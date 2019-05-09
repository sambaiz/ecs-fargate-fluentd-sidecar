
- replace your settings

```
sed -i '' 's/<your_account_id>/1234567890/g' cfn.yaml
sed -i '' 's/<your_account_id>/1234567890/g' .circleci/config.yml
```