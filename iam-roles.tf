resource "aws_iam_role" "test_dev_role" {
  name = "AWSTestDev"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        
        
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
          
        }
      },
      
    ]
    
    
  })

  tags = {
    Owner = "JoshTracy"
  }
}
