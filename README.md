# Multi-Instance AWS EC2 Deployment with Terraform
Create multiple EC2 instance and give dynamically name & instance type

![terraform-count](https://github.com/Pratikshinde55/Terraform-aws-Count_dynamically/assets/145910708/9d4138a1-8f73-4b97-87b8-cd0049d47f16)

## Count: 
Count is Terraform meta-argument is used in resource block to specify that resource how many times run.count is a meta-argument defined by the Terraform 
language. It can be used with modules and with every resource type.

- Meta-argument: The terraform argument which is used in any resources are known as 'Meta-argument'.

- Count.index: It's special variable which define length of list of count. such as os[0] , os[1], os[2]......
  
In this work i have created below files for my code , mypsfile is created by "-out" keyword which store all setup code in binary format.  
" # terraform.exe plan -out=mypsfile "

![files-tf](https://github.com/Pratikshinde55/Terraform-aws-Count_dynamically/assets/145910708/4d156206-a87a-4482-b39e-3c5f682fe4e7)

## Step-1:
provider file for plugin and put credentials info .(aws provider plugin)

     notepad provider.tf 

![provider- tf](https://github.com/Pratikshinde55/Terraform-aws-Count_dynamically/assets/145910708/9111dd17-6f1b-44d5-8369-91a6735d75ef)

## Step-2:
Here main.tf file for all code related to aws_instance Resource block.

Data Source for AMI: It fetches the latest Amazon Linux 2 AMI with a specific naming convention (al2023-ami-*-x86_64) and other filters.

EC2 Instance Resource: It defines an EC2 instance resource, using the AMI fetched in the previous step. It specifies the instance type, security group ID,
and creates multiple instances using the count meta-argument.

Variables: "names": A list of names for instances, "instanceType": A list of instance types, "sec-grpID": Security Group ID.

Output: It outputs a message based on the value of the Give-true-false variable. If it's true, it outputs a welcome message; otherwise, it suggests trying
again later.

Locals: It defines some local values, such as admin name, owner, salary, and current time.
   
   notepad main.tf 

![main tf](https://github.com/Pratikshinde55/Terraform-aws-Count_dynamically/assets/145910708/6299137c-9f52-4559-9d75-8359dbd13481)


![vari](https://github.com/Pratikshinde55/Terraform-aws-Count_dynamically/assets/145910708/751ad7b1-e91a-4f84-9f71-5acf83b0b048)

In terraform 'varible' we can't use terraform function, Because of this "locals" is used. (check main.tf file). Output block is required to run local value.

max(): max function is used to retrieve maximum value .

formatdate(): It's is terraform function which give format for date.

timestamp(): It's terraform function which run in real time and give real time.

## Step-3:
Now, 1st use terraform init & then terraform apply command entire setup is launched, i give true value output is welcome show during apply command run. & current
date and time show .
     
     terraform init
     terraform apply

![terra-apply](https://github.com/Pratikshinde55/Terraform-aws-Count_dynamically/assets/145910708/caa4ea39-d93b-4b7c-a8f4-fed66c6bde34)


![apply-output](https://github.com/Pratikshinde55/Terraform-aws-Count_dynamically/assets/145910708/4b4e0be7-bc4c-445d-8b86-9207aee4d47c)


## Now check on AWS Console:---

here all three instances is launched with given instance type as well as instance name .

![Screenshot 2024-03-30 181743](https://github.com/Pratikshinde55/Terraform-aws-Count_dynamically/assets/145910708/4e9a0893-8e40-4fec-8921-1f7d149126ed)

For each instance bellow security group created by terraform:

I give security group id in "vpc_security_group_ids" argument , the security group is created on aws console manually and only security_group id i give in terraform
main block.

![Screenshot 2024-03-30 181902](https://github.com/Pratikshinde55/Terraform-aws-Count_dynamically/assets/145910708/5d9d8328-658c-425c-9c74-3e83f7f5d195)

