#!/bin/bash

curl --silent --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "j@j.com",
      "password": "j"
    }
  }'
