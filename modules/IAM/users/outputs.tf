output "iam_user_arn" {
  value = aws_iam_user.fctp_iam_user.arn
}

output "aws_iam_user_name" {
  value = aws_iam_user.fctp_iam_user.name
}
output "access_key_id" {
  value = aws_iam_access_key.tf_user_acces_key.id
}


# tf output secret_key        # use this command for the view secreat acces key
# tf output secret_key > secrt.txt   # to store screat acces key in the  secrt.txt file 
 # tf output secreat_key | tee sec.txt 
output "secret_key" {
  value = aws_iam_access_key.tf_user_acces_key.secret
  sensitive = true
}