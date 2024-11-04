terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.3"
    }
  }
}

provider "null" {
  # Configuration options

}


resource "null_resource" "service_bus" {
    triggers = {
        id = timestamp()
    }
    provisioner "local-exec" {
        command = "pwsh -file C:/Users/sreen/OneDrive/Desktop/git_folder/Automation/powershell/ServiceBus.ps1"
      
    }
  
}

