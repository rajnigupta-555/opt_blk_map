module "rg"{
    source="../env/dev/resource_group"
    resource_group_name=var.resource_group_name
    location=var.location
}

module "sta" {
  source           = "../env/dev/storage_account"
  storage_account = var.storage_account
   depends_on = [module.rg]

}

resource "null_resource" "trigger_echo" {
  provisioner "local-exec" {
    command = "echo 'Triggering CI/CD pipeline with a dummy change'"
  }
}