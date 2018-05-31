# Notes

## Add TF Alias
```
cat 'alias "tf"="terraform"' > ~/.bash_profile && source ~/.bash_profile
```

## Common Commands
```
touch terraform.tfvars
tf init
tf plan -out terraform.plan
tf apply terraform.plan
tf destroy -var-file=./terraform.tfvars
```
