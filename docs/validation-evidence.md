# AWS CodeCommit Validation Evidence

## Environment

- AWS account: `774305591665`
- IAM user: `3rd-lab-user`
- AWS region: `us-east-1`
- Terraform version: `1.17.0`

## AWS Discovery

Command:

```bash
aws codecommit list-repositories --region us-east-1
```

The discovery query returned no repository entries.

## Troubleshooting Evidence

Terraform initially failed because three output definitions were duplicated.

After correcting `outputs.tf`, validation and planning succeeded.

## Terraform Validation

Command:

```bash
terraform validate
```

Observed result:

```text
Success! The configuration is valid.
```

## Terraform Plan

Command:

```bash
terraform plan -input=false -no-color
```

Observed result:

```text
Plan: 1 to add, 0 to change, 0 to destroy.
```

Planned repository: `terraform-codecommit-lab`.

## Deployment Status

**PLAN ONLY — NOT DEPLOYED.**

No `terraform apply` was executed.

No AWS CodeCommit repository was created.

## Screenshot

`screenshots/codecommit-terraform-validation.png` — terminal evidence of Terraform validation and planning.

