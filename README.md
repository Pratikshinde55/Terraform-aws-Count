# Terraform-aws-Count_dynamically
Create multiple EC2 instance and give dynamically name &amp; instance type using terraform

🌟Count : 

Count is Terraform meta-argument is used in resource block to specify that resource how many times run.count is a meta-argument defined by the Terraform language. It can be used with modules and with every 
 resource type.

 Meta-argument: 

 The terraform argument which is used in any resources are known as 'Meta-argument'.

 Count.index:
 
 It's special variable which define length of list of count. such as os[0] , os[1], os[2]......


In this work i have created below files for my code , mypsfile is created by "-out" keyword which store all setup code in binary format.  
" # terraform.exe plan -out=mypsfile "

![files-tf](https://github.com/Pratikshinde55/Terraform-aws-Count_dynamically/assets/145910708/4d156206-a87a-4482-b39e-3c5f682fe4e7)

⚡Step-1:⚡

provider file for plugin and put credentials info .(aws provider plugin)


          # notepad provider.tf 

![provider- tf](https://github.com/Pratikshinde55/Terraform-aws-Count_dynamically/assets/145910708/9111dd17-6f1b-44d5-8369-91a6735d75ef)

⚡Step-2:⚡

Here main.tf file for all code related to aws_instance Resource block.

Data Source for AMI: It fetches the latest Amazon Linux 2 AMI with a specific naming convention (al2023-ami-*-x86_64) and other filters.

EC2 Instance Resource: It defines an EC2 instance resource, using the AMI fetched in the previous step. It specifies the instance type, security group ID,
and creates multiple instances using the count meta-argument.

Variables: "names": A list of names for instances, "instanceType": A list of instance types, "sec-grpID": Security Group ID.

Output: It outputs a message based on the value of the Give-true-false variable. If it's true, it outputs a welcome message; otherwise, it suggests trying
again later.

Locals: It defines some local values, such as admin name, owner, salary, and current time.


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

