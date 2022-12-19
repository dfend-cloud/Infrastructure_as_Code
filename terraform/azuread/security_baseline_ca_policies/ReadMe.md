## Terraform for Azure Active Directory Baseline Condtional Access

This repo is designed to push baseline condtional access policies using infrastructure as code with Terraform. 

## Prerequisites

* Terraform should be in installed and configured as described in this [article](https://docs.microsoft.com/en-us/azure/developer/terraform/get-started-cloud-shell)
* Identity your authorized countries and ensure to update `authorized_countries.tf`. You can refer to accepted country codes [here](https://github.com/dfend-cloud/Infrastructure_as_Code/blob/main/terraform/azuread/security_baseline_ca_policies/reference/ISO-3166-2_country_codes.csv)

## Affected Azure Active Directory Components

* Conditional Access Policies 
* Named Locations

## Artifacts

The following terraform files are 

* `authorized_countries.tf`  
Security Baseline Authorized Countries: Countries in which logins will be allowed. Everything else will be blocked. 
* `sbca01.tf`  
Security Baseline Conditonal Access Policy 01: Require all administrators to provide mutlifactor authentication for all applications every 8 hours.
* `sbca02.tf`  
Security Baseline Conditonal Access Policy 02: Require multi-factor authentication for all users except for administrators (refer to sbca01) and trusted locations.
* `sbca03.tf`  
Security Baseline Conditonal Access Policy 03: Require multi-factor authentication low-Medium-risky signins and users. 
* `sbca04.tf`
Security Baseline Conditonal Access Policy 04: Require multi-factor authentication for all users accessing the Azure Management portal every 8 hours. 
* `sbca05.tf`
Security Baseline Conditonal Access Policy 05: Block all legacy authentication. 
* `sbca06.tf`
Security Baseline Conditonal Access Policy 06: Block all high risk sign ins and users. 
* `sbca07.tf`  
Security Baseline Conditonal Access Policy 07: Block all countires outside of the approved countries named location. 

## Deploy with Terraform Deploy
Initialize Terraform. This will check pre-requisites. 

```
terraform init
```

Build a terraform execution plan. The plan will be stored in the file as per the -out paramater. 

```
terraform plan -out terraform_ca_policies.tfplan
```

Apply the generated terraform execution plan 

```
terraform apply terraform_ca_policies.tfplan
```
 
## Additional References

<details>
<summary>Terraform References</summary>

* [Download Terraform](https://www.terraform.io/downloads.html)
* [Download VS Code](https://code.visualstudio.com/Download)
* [Azure AD Terraform Provider](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs)

</details>
