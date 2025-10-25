output "users_in_aws" {
    value = data.aws_iam_users.users.names
}

output "total_number_of_users" {
    value = length(data.aws_iam_users.users.names)
}
