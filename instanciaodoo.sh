#!/bin/bash
aws cloudformation deploy --region us-east-1 --stack-name ec2odoo  --parameter-overrides EnvironmentName="MiAmbiente" LlaveEc2="KeyEc2CloudFormationVirginia" --template-file ./instanciaodoo.yml