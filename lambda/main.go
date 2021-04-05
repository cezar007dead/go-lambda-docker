package main

import (
	"fmt"

	"github.com/aws/aws-lambda-go/lambda"
	"github.com/jimlawless/whereami"
)

func handler(req map[string]interface{}) (map[string]interface{}, error) {
	var response = make(map[string]interface{})
	response["status"] = string("success")
	return response, nil
}

func main_local() { //main_local | to run localy rename to "main" and rename other one to "main_live"
	var req = map[string]interface{}{}
	res, err := handler(req)
	if err != nil {
		fmt.Println("Error ", whereami.WhereAmI(), err)
	}
	_ = res
}

func main() { //main_live
	lambda.Start(handler)
}
