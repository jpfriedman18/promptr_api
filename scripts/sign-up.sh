#!/bin/bash

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "s@s.com",
      "password": "s",
      "password_confirmation": "s",
      "teacher": "false"
    }
  }'
