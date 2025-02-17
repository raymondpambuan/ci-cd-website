provider "aws" {
  region                      = "ap-southeast-1"
  access_key                  = "test1"
  secret_key                  = "test2"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true

  endpoints {
    ec2 = "http://localhost:4566"
    s3  = "http://s3.localhost.localstack.cloud:4566"
  }
}

resource "aws_instance" "web-server" {
  ami           = "ami-06ca3ca175f37dd66"
  instance_type = "t2.micro"
  count         = 5
  tags = {
    Name = "web-server-${count.index}"
  }
}
