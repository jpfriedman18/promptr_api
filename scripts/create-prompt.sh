curl --include --request POST http://localhost:3000/prompts \
--header "Authorization: Token token=BAhJIiVhM2I5YzQ2ZjEyODZmMWQwMWVmNzViNzVlZDUzMDcwOAY6BkVG--b4b780fcdcaf042d5bc249d1f95ec9898dd533cc" \
  --header "Content-Type: application/json" \
  --data '{
    "prompt": {
      "title": "Im totall not authorized",
      "text": "ah shit"
    }
  }'
