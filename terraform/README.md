# modular-example terraform

> Contains the terraform code to provision infrastructure

## Overview

The `pubsub` module create two topic/subscription pairs that will be used by the consumer and producer python apps.

## Provision resources

The `dev`, `qa`, and `prod` modules all use the `pubsub` module to provision Pub/Sub resources. The resources are named differently for illustrative purposes. Normally these resources would go in a separate project but this repository uses one project defined by the `TF_VAR_project` variable for simplicity.

To provision resources for the `dev` environment run the following commands:

```
git clone git@github.com:mbigras/modular-example.git
cd modular-example
source vars.sh # sets TF_VAR_project to default gcp project
cd terraform
cd dev
terraform init
terraform plan -out=current.plan
terraform apply current.plan
```
