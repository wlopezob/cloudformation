#!/bin/bash
aws cloudformation deploy --region us-east-1 --stack-name mivpcstack  --parameter-overrides EnvironmentName="dev" --template-file ./vpc.yml