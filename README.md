# Ansible Terraform SSOT Demo

Demo content containing examples of executing Ansible with Terraform, Terraform with Ansible, manipulating a centralized inventory, and combining the power of Ansible Tower and Terraform Enterprise.

## Terraform

### GCP Setup

#### Project

Create the project to be used for this demo:

```bash
gcloud projects create <project_id>
```

#### Service Account Credentials

Set your local credentials directory and filename:

```bash
creds_dir="~/.gcp"
key="$creds_dir/account.json"

mkdir "$creds_dir"
chmod 700 "$creds_dir"
```

Create a service account to provision GCE resources:

```bash
gcloud iam service-accounts create gce-provisioner --project <project_id>
```

Create and download the service account **private** key:

```bash
gcloud iam service-accounts keys create "$key" --iam-account gce-provisioner@<project_id>.iam.gserviceaccount.com
```
