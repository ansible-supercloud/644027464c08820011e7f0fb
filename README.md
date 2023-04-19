# Data Science Solution

Solution based on AKS Container Deployment, Databricks Workspace, Inbound Internet Connection, Salesforce Connection, Teradata Connection, Data Hub Connection, Integration Services Connection, Oracle Database Connection, Self Hosted Integration Runtime in Standard reference architecture deployed on Azure with 150-azure-storage-blob as storage option.

## Running the automation

There are three different options for how to configure and run the automation:

- Interactive prompts
- Yaml configuration
- Terraform configuration

### Interactive prompts

In this mode, you will be prompted interactively for the variables required to run the automation.

1. Run the `apply.sh` script
2. At each prompt, provide a value for the variable.
3. Once all the variables are collected, you will be asked to apply the automation. Enter `y` to continue or `n` to stop. Either way, the values provided have been collected and written to two sets of files so that next time you can skip the prompts.

The `apply.sh` script will generate credentials.yaml and variables.yaml input files that can be used
for future deployments as well as generating the credentials.auto.tfvars and terraform.tfvars files
used by the terraform. The variables.yaml and terraform.tfvars files can be checked in with the terraform
templates. However, credentials.yaml and credentials.auto.tfvars should be excluded since they contain
sensitive information. Those files should already be included in the .gitignore file.

### Yaml configuration

In this mode, you provide the configuration for your instance in yaml configuration files and avoid
the prompts.

1. Copy the variables.template.yaml file to variables.yaml and credentials.template.yaml to credentials.yaml.
2. Provide values for each of the variables in variables.yaml and credentials.yaml.
3. Run `apply.sh --ci` to kick off the automation. You will not be prompted for input variables and the automation will start immediately

The `apply.sh` script will generate the credentials.auto.tfvars and terraform.tfvars files from the
values provided in the yaml files. The variables.yaml and terraform.tfvars files can be checked in with the terraform
templates. However, credentials.yaml and credentials.auto.tfvars should be excluded since they contain
sensitive information. Those files should already be included in the .gitignore file.

### Terraform configuration

In situations where you are comfortable working with the terraform directly, you can skip the yaml
configuration files and directly configure the automation with the terraform configuration files.

1. Copy the variables.template.tfvars file and credentials.auto.template.tfvars to variables.tfvars and credentials.auto.tfvars, respectively.
2. Provide values for the different variables in variables.tfvars and credentials.auto.tfvars.
3. Kick off the automation with `apply.sh --ci` or skip the script and run `terragrunt run-all apply --terragrunt-parallelism 1 --terragrunt-non-interactive`

The terraform.tfvars file can be checked in with the terraform templates. However, credentials.auto.tfvars
should be excluded since it contains sensitive information. The credentials.auto.tfvars file should
already be in .gitignore.

## Contents

### Layers

| Name | Layer | Description | Version |
|------|-------|-------------|---------|
| [101-azure-vnet-std](./101-azure-vnet-std) | infrastructure | Azure base infrastructure for OpenShift standard architecture | v1.0.1 |
| [105-azure-aro-std](./105-azure-aro-std) | infrastructure | Azure ARO managed OpenShift for Standard Architecture | v1.0.1 |
| [150-azure-storage-blob](./150-azure-storage-blob) | infrastructure | Provision a storage blob on Azure | v1.0.0 |
| [200-openshift-gitops](./200-openshift-gitops) | software | Provisions OpenShift GitOps (ArgoCD) into an existing cluster and bootstraps it to a gitops repository | v1.0.1 |
| [270-self-hosted-integration-runtime](./270-self-hosted-integration-runtime) | software | Self Hosted Integration Runtime | v1.0.0 |
| [350-data-hub-connection](./350-data-hub-connection) | software | Data Hub Connection | v1.0.0 |
| [350-integration-services-connection](./350-integration-services-connection) | software | Integration Services Connection | v1.0.0 |
| [350-oracle-database-connection](./350-oracle-database-connection) | software | Oracle Database Connection | v1.0.0 |
| [350-salesforce-connection](./350-salesforce-connection) | software | Salesforce Connection | v1.0.0 |
| [350-teradata-connection](./350-teradata-connection) | software | Teradata Connection | v1.0.0 |
| [380-inbound-internet-connection](./380-inbound-internet-connection) | software | Inbound Internet Connection | v1.0.0 |
| [470-databricks-workspace](./470-databricks-workspace) | software | Databricks Workspace | v1.0.0 |
| [540-aks-container-deployment](./540-aks-container-deployment) | software | AKS Container Deployment | v1.0.0 |

### Variables

| Name | Description | Sensitive | Default value |
|------|-------------|-----------|---------------|
| aks-container-deployment_name | The name of the resource group |  |  |
| azure-storage-blob_storage_account_name | The name of the Azure Storage Account |  |  |
| blob_resource_group_name | The name of the resource group |  |  |
| client_id |  |  |  |
| client_secret |  | true |  |
| config_banner_text | The text that will appear in the top banner in the cluster |  |  |
| data-hub-connection_name | The name of the resource group |  |  |
| databricks-workspace_name | The name of the resource group |  |  |
| gitops_repo_repo | The short name of the repository (i.e. the part after the org/group name) |  |  |
| inbound-internet-connection_name | The name of the resource group |  |  |
| integration-services-connection_name | The name of the resource group |  |  |
| oracle-database-connection_name | The name of the resource group |  |  |
| region | The Azure location where the resource group will be provisioned |  |  |
| resource_group_name | The name of the resource group |  |  |
| salesforce-connection_name | The name of the resource group |  |  |
| self-hosted-integration-runtime_name | The name of the resource group |  |  |
| subscription_id |  |  |  |
| tenant_id |  |  |  |
| teradata-connection_name | The name of the resource group |  |  |
| gitops_repo_host | The host for the git repository. The git host used can be a GitHub, GitHub Enterprise, Gitlab, Bitbucket, Gitea or Azure DevOps server. If the host is null assumes in-cluster Gitea instance will be used. |  |  |
| gitops_repo_org | The org/group where the git repository exists/will be provisioned. If the value is left blank then the username org will be used. |  |  |
| gitops_repo_project | The project that will be used for the git repo. (Primarily used for Azure DevOps repos) |  |  |
| gitops_repo_token | The personal access token used to access the repository | true |  |
| gitops_repo_username | The username of the user with access to the repository |  |  |
| name_prefix | The name of the vpc resource |  |  |
| pull_secret | The contents of the pull secret needed to access Red Hat content. The contents can either be provided directly or passed through the `pull_secret_file` variable |  |  |
| pull_secret_file | Name of the file containing the pull secret needed to access Red Hat content. The contents can either be provided in this file or directly via the `pull_secret` variable |  |  |

## Troubleshooting

