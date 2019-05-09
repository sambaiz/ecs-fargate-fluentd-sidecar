## ecs-fargate-fluentd-sidecar

Article: [ECS FargateでSidecarのFluentdでログをS3に送る構成をCloudFormationで構築する - sambaiz-net](https://www.sambaiz.net/article/221/)

- replace your settings

```
sed -i '' 's/<your_account_id>/1234567890/g' cfn.yaml
sed -i '' 's/<your_account_id>/1234567890/g' .circleci/config.yml
```