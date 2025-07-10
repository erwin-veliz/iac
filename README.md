# terraform
Comando para desplegar en DEV:

```ts
terraform init
terraform apply -var-file=env/dev.tfvars
```

Comando para desplegar en PRD:

```ts
terraform init
terraform apply -var-file=env/prd.tfvars
```