




module "payroll_app" {
  source = "/root/terraform-projects/modules/payroll-app"
  # Enter the following required arguments
  app_region = lookup(var.region,terraform.workspace)
  ami        = lookup(var.ami,terraform.workspace)
}


