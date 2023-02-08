
aws cloudformation validate-template --template-body file://service-cf.yml
aws cloudformation create-stack --stack-name test-aws-cli --template-body file://service-cf.yml --parameters file://service-params.json
aws cloudformation create-stack --stack-name test-aws-cli-vpc --template-body file://project-base-cf.yml --parameters file://project-params.json --capabilities CAPABILITY_NAMED_IAM

aws cloudformation describe-stacks --stack-name my-stack-name
aws cloudformation describe-stack-resources --stack-name my-stack
aws cloudformation describe-stacks  --query "Stacks[?StackName=='buildman-dev'][].Outputs[?OutputKey=='VPC'].OutputValue" --output text