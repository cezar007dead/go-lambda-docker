Before you start

1)Make sure you have docker running

2)Put configurations of your AWS
    a)Credentials are located at "usr/.aws/credentials"
    b)Config file with region and output setting located at "usr/.aws/config"

3)Put name of your lambda to "usr/.bashrc" in to LAMBDA_FUNCTION_NAME variable
4)you can also change name of container if you want in Docker-compose.yml file ("go_lambda" is default name)

---------------------------

Start the container by running "docker-compose up" in project folder

Connect to container (Windows - open cmd)

docker exec -it go_lambda /bin/bash (if you have custom name you need to change "go_lambda" to your name)

go to lambda folder by running "cd src/lambda"

to deploy lambda run "lambda_deploy"

---------------------------
if you want to run it localy you need to run custom function with out lambda.Start(handler) inside (you can just rename them)

run comand "go run *.go" it will run it localy
Debuger in VSCODE also should work
