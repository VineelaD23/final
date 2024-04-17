resource "null_resource" "ansible" {
  provisioner "local-exec" {
    command = "cd ../../ansible && /bin/bash script.sh"
  }
#   connection {
#         type        = "ssh"
#         user        = "n01605093"
#         private_key = file("vineeladandu/.ssh/id_rsa")
#         host        = azurerm_linux_virtual_machine.n01605093-vmlinux
#   }
  depends_on = [
    module.rgroup-n01605093,
    module.datadisk-n01605093,
    module.vmlinux-n01605093
  ]
}


    

   

    
    
