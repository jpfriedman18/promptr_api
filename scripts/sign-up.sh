#!/bin/bash

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "k@k.com",
      "password": "k",
      "password_confirmation": "k",
      "profileable_type": "Teacher",
      "name": "Dr. Kevin"
    }
  }'
