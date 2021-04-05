export LAMBDA_FUNCTION_NAME="NAME_OF_YOUR_LAMBDA"
export LAMBDA_HANDLER_NAME="lambda"
alias lambda_deploy="cd /go/src/$LAMBDA_HANDLER_NAME && GOOS=linux go build -o main && zip deploy.zip main && aws lambda update-function-configuration --handler main --function-name $LAMBDA_FUNCTION_NAME && aws lambda update-function-code --function-name $LAMBDA_FUNCTION_NAME --zip-file fileb://deploy.zip"
