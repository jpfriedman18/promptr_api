curl --include --request POST http://localhost:3000/prompts \
--header "Authorization: Token token=BAhJIiUwZmIzMzkzNTRmNWRkZjI4MTlhMDVlZjRmMGY5YTYyZAY6BkVG--ac6ace5513475d57a816bcd7ce9bbbf6bafeccbf" \
  --header "Content-Type: application/json" \
  --data '{
    "prompt": {
      "title": "Im authorized",
      "text": "yeah"
    }
  }'
