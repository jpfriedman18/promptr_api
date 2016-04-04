curl --include --request POST http://localhost:3000/prompt_responses \
--header "Authorization: Token token=BAhJIiVkMTUwNDVjMzdiMWFhNmVhZTkwZDhlYTNmOGJkM2Q4YwY6BkVG--a03fe0ff82770145019ca8e38df559aeec485b25" \
  --header "Content-Type: application/json" \
  --data '{
    "prompt_response": {
      "text": "An essay",
      "prompt_id": 2
    }
  }'
