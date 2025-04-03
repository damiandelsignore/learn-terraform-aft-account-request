module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "damian.del.signore+aftdemoacct1@gmail.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Infrastructure"
    SSOUserEmail              = "damian.del.signore+aftdemoacct1@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }


  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

module "test_account_4" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "shi_awsprosvcs_testacct4@shi.com"
    AccountName               = "Test Account 4"
    ManagedOrganizationalUnit = "Dev (ou-98r4-kvcxa69e)"
    SSOUserEmail              = "shi_awsprosvcs_testacct4@shi.com"
    SSOUserFirstName          = "Admin"
    SSOUserLastName           = "User"
  }


  account_tags = {
    "Learn Tutorial" = "AFT"
    "Account Source" = "Existing"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "legacy"
}