Blocks: 
Resource:- new resource info

Data source:- existing infra used
Output:- print echo statements
Variable :- manage variable
Provider :- its like libraary of tf
Terraform :- tf behave manage
Module:- predefind templtae of ur code


terraform syntax

# <BLOCK_TYPE> < RESOURCE_TYPE> < BLOCK_NAME> {
  #CONFIGURATION
 # } 
/*--------*/


## Terraform Lifecycle
------------------------------------------------------------------------------------
1.Write Code - Terraform configuration .tf

2.terraform init - initialise terraform provider, download lib, download plugins, initialize modules, variables varify 
.terraform/  
.terraform.lock.hcl -  hold ur terraform state.(.terraform.lock.hcl file that locks provider versions to ensure consistency.)

3.terraform plan - Blueprint  of ur infrastructure

+(Add resource) - (Delete Resource) ~ (Change Resource)

4.terraform apply - Create infrastructure 

terraform.tfstate -  Records the current state of your infrastructure in a file named terraform.tfstate.

 infra state, terraform refer tfstate first. terraform.tfstate.backup 


5. terraformdestroy - delete complete infra



# variables Types
--------------------------------------------------------------------

extension: .tf, .tf.json

Data types:

 string: "anil", "1234235" 
 
 number: 143973249 
 
 bool: true/false, 0/1 
 
 list: ["apple", "banana", "apple", 131643,"mango"]   ------ mutable (value change in running script)
 
 tuple: ("apple", "banana", "apple", 131643,"mango") ------ immutable (value not change in running script)
 
 set: {"apple", "banana", 131643, "mango"}  --------- mutable (duplicate value remove,unique value manage)
 
 map: {fruit = "apple", name = "ram", address = "Hingna" } ----key value

```bash
 terraform plan --var image_id="ami-088b41ffb0933423f"
``` 