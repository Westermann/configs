## Examples
```
aws ec2 request-spot-instances --spot-price 0.02 --instance-count 1 --type one-time --launch-specification file://./fixtures/datarider_mx3-med_instconfig.json
aws ec2 describe-instances --filter "Name=key-name,Values=datarider"
```

