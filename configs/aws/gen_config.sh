echo "[default]
aws_access_key_id        = $(aws configure get aws_access_key_id)
aws_secret_access_key    = "$(aws configure get aws_secret_access_key)"
source_profile           = "$(aws configure get source_profile)"
aws_session_token        = "$(aws configure get aws_session_token)"
aws_security_token       = "$(aws configure get aws_security_token)"
x_principal_arn          = "$(aws configure get x_principal_arn)"
x_security_token_expires = "$(aws configure get x_security_token_expires)"
region                   = us-east-1" | > .aws