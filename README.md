<!-- TOC -->
  * [Introduction](#introduction)
  * [Lifecycle of Terraform](#lifecycle-of-terraform)
      * [Perform login to cloud provider using CLI](#perform-login-to-cloud-provider-using-cli)
      * [Terraform init to download required plugins](#terraform-init-to-download-required-plugins)
      * [Terraform plan to see what will be created](#terraform-plan-to-see-what-will-be-created)
      * [Terraform apply to create the stack](#terraform-apply-to-create-the-stack)
      * [Once tasks done, Terraform destroy to delete the stack](#once-tasks-done-terraform-destroy-to-delete-the-stack)
  * [State management](#state-management)
  * [Compose resources based on existing state import](#compose-resources-based-on-existing-state-import)
  * [Visualize the stack graph](#visualize-the-stack-graph)
  * [Keep code formatted](#keep-code-formatted)
<!-- TOC -->

## Introduction

This is a demo set of Terraform manifest files to create stack of EKS, EFS, ELB on AWS cloud provider to deploy a simple application for testing purpose.

_Noted_: In this reference, still few configs are hardcoded resource ID. Looking forward to more contributions to manage all resources needed independently for apply/destroy seamlessly.

## Lifecycle of Terraform

```bash
sudo apt install python3-pip
sudo pip install --upgrade requests awscli
```

#### Perform login to cloud provider using CLI

_In this example, we are using AWS CLI_

```bash
aws configure
```

#### Terraform init to download required plugins

```bash
terraform init
```

#### Terraform plan to see what will be created

```bash
terraform plan
```

#### Terraform apply to create the stack

```bash
terraform apply
```

#### Once tasks done, Terraform destroy to delete the stack

```bash
terraform destroy
```

## State management

To check resource state, use below command

```bash
terraform show
```

To get a list of resource state, use below command

```bash
terraform state list
```

## Compose resources based on existing state import

To import existing resources to Terraform state, use below command

```bash
terraform import aws_eks_cluster.my-cluster eks-cluster
```

Read the [Terraform docs](https://developer.hashicorp.com/terraform/docs) for more information on resources supported for each cloud provider.

Get the state of the imported resource, and update the `*.tf` file accordingly.

Terraform validate to check the syntax of the `*.tf` files and remove redundant configs if any.

```bash
terraform validate
```

## Visualize the stack graph

If any changes in stack, update the `.graph.png` using below command after running `terraform plan`

```bash
terraform graph -type=plan | dot -Tpng >.graph.png
```

Install `graphviz` package if not already installed

```bash
sudo apt install graphviz
```

## Keep code formatted

Format code in `*.tf` files using below command

```bash
terraform fmt
```