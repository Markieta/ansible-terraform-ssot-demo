# Ansible Terraform SSOT Demo

Demo content containing examples of executing Ansible with Terraform, Terraform with Ansible, manipulating a centralized inventory, and combining the power of Ansible Tower and Terraform Enterprise.

## Terraform

### GCP Credentials Setup

```bash
creds_dir="~/.gcp"
key="~/Downloads/<sa_key>"

mkdir "$creds_dir"
chmod 700 "$creds_dir"
cp "$key" "$creds_dir"
```
