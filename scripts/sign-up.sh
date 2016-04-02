#!/bin/bash

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "j@j.com",
      "password": "j",
      "password_confirmation": "j",
      "teacher": "true"
    }
  }'
