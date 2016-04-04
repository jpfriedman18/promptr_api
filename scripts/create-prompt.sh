curl --include --request POST http://localhost:3000/prompts \
--header "Authorization: Token token=BAhJIiUxZmJlMmViM2MxZGQ3MTQwNzIyMDhjOTYxNmJhNWFkMwY6BkVG--212da58458294dac1d8e0e44c19d22d79305d5ff" \
  --header "Content-Type: application/json" \
  --data '{
    "prompt": {
      "title": "Im authorized",
      "text": "yeah"
    }
  }'
