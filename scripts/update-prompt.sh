#!/bin/bash

curl --include --request PATCH http://localhost:3000/prompts/2 \
  --header "Content-Type: application/json" \
  --data '{
    "prompt": {
      "title": "A different essay",
      "text": "Write the thing"
    }
  }'
