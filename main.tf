# Create EC2 Instance
resource "aws_instance" "my-ec2-vm" {
  ami               = "ami-0c1907b6d738188e5"  #Ubuntu
  #ami               = "ami-0d2614eafc1b0e4d2"  #windows
  instance_type     = "t2.micro"
  availability_zone = "ap-southeast-1a"
  #availability_zone = "ap-southeast-1b"
  tags = {
     "Name" = "web"
    #"tag1" = "Update-test-1"    
  }
}

