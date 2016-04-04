#!/bin/bash

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "n@n.com",
      "password": "n",
      "password_confirmation": "n",
      "profileable_type": "Student"
    }
  }'
