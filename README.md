# Terraform-aws-Count_dynamically
Create multiple EC2 instance and give dynamically name &amp; instance type using terraform

🌟Count : 

Count is Terraform meta-argument is used in resource block to specify that resource how many times run.count is a meta-argument defined by the Terraform language. It can be used with modules and with every 
 resource type.



      # terraform.exe plan -out=mypsfile

i  save my file using out keyword 

![files-tf](https://github.com/Pratikshinde55/Terraform-aws-Count_dynamically/assets/145910708/4d156206-a87a-4482-b39e-3c5f682fe4e7)



          # notepad provider.tf 

![provider- tf](https://github.com/Pratikshinde55/Terraform-aws-Count_dynamically/assets/145910708/9111dd17-6f1b-44d5-8369-91a6735d75ef)


         # notepad main.tf 

![main tf](https://github.com/Pratikshinde55/Terraform-aws-Count_dynamically/assets/145910708/6299137c-9f52-4559-9d75-8359dbd13481)


![vari](https://github.com/Pratikshinde55/Terraform-aws-Count_dynamically/assets/145910708/751ad7b1-e91a-4f84-9f71-5acf83b0b048)


         # terraform init
         # terraform apply

![terra-apply](https://github.com/Pratikshinde55/Terraform-aws-Count_dynamically/assets/145910708/caa4ea39-d93b-4b7c-a8f4-fed66c6bde34)


![apply-output](https://github.com/Pratikshinde55/Terraform-aws-Count_dynamically/assets/145910708/4b4e0be7-bc4c-445d-8b86-9207aee4d47c)


AWS console :---

![Screenshot 2024-03-30 181743](https://github.com/Pratikshinde55/Terraform-aws-Count_dynamically/assets/145910708/4e9a0893-8e40-4fec-8921-1f7d149126ed)


For each instance bellow security group created by terraform


![Screenshot 2024-03-30 181902](https://github.com/Pratikshinde55/Terraform-aws-Count_dynamically/assets/145910708/5d9d8328-658c-425c-9c74-3e83f7f5d195)

