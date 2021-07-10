variable "region" {
    default     = "us-east-1"
    description = "AWS Region"
}

variable "cluster_name" {
    default = "starter-eks"
}

variable "map_accounts" {
    description = "Additional AWS account numbers to add to aws-auth configmap"
    type        = list(string)

    default     = [
        "777777777777",
        "888888888888",
    ]
}

variable "map_roles" {
    description = "Additional IAM roles to add to the aws-auth configmap"
    type        = list(object({
        rolearn     = string
        username    = string
        groups      = list(string)
    }))

    default = [
        {
            userarn     = "arn:aws:iam::666666666666:user/user1"
            username    = "user1"
            groups      = ["system:masters"]
        },
    ]
}