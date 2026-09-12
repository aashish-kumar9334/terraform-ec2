#key pair (login) 
resource "aws_key_pair" "my_key" { 
    key_name   = "terra-key-ec2" 
    public_key = file("terra-key-ec2.pub") 
} 
 
#vpc & security group 
resource "aws_default_vpc" "default" { 
    # No quotes around resource blocks 
} 
 
resource "aws_security_group" "my_security" { 
    name        = "twssecurity" 
    description = "this is security group" 
    vpc_id      = aws_default_vpc.default.id # REMOVED QUOTES 
 
    #inbound rules 
    ingress { 
        from_port   = 22 
        to_port     = 22 
        protocol    = "tcp" 
        cidr_blocks = ["0.0.0.0/0"] 
    } 
    ingress { 
        from_port   = 80 
        to_port     = 80 
        protocol    = "tcp" 
        cidr_blocks = ["0.0.0.0/0"] 
    } 
 
    #outbound rules 
    egress { 
        from_port   = 0 
        to_port     = 0 
        protocol    = "-1"  
        cidr_blocks = ["0.0.0.0/0"] 
    } 
    tags = { 
      Name = "allow" # Capitalized 'Name' is standard for AWS Console 
    } 
} 
 
#ec2 instance 
resource "aws_instance" "my_instance" { 
    count = 2 #meta argument 
    key_name        = aws_key_pair.my_key.key_name # REMOVED QUOTES 
     
    # REMOVED QUOTES + FIX TYPO: changed my_security_group to my_security 
    security_groups = [aws_security_group.my_security.name]  
     
    instance_type   = var.ec2_instance_type
    ami             = var.ec2_ami_id
 
    user_data = file("install_nginx.sh") 
 
    root_block_device { 
      volume_size = var.ec2_root_storage_size # Removed quotes (numbers don't need them) 
      volume_type = "gp3" 
    } 
 
    tags = { 
        Name = "Coret-${count.index + 1}" # Capitalized 'Name' 
    } 
}     