use tfvars file and assign variables' values here
extend aws_vpc resource so you can define optional arguments

tips:
- extension of the reource will applu to each resource one by one
- which variable values should actually have default and whether that default should be at the level of calling out the modyle, or within the module itsels?
- approach this critically and think about use cases when a user might want to declare something, etc.
- when using if statements anywhere, remember that default values can be problematic (bc then you alwas have a value of 1)



resource aws vpc, ipv6 dodac variable wiece, enable classic dns support  enable ipv6 jak na true to zdefiniowac 
