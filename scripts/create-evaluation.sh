curl --include --request POST http://localhost:3000/evaluations \
--header "Authorization: Token token=BAhJIiU0NmU0MzgyZTZlNTc0ZDE1NGMxMzdkOWZkNDdkZDRjYgY6BkVG--671c8f5704d14738a37abfb88d12ede94d028bc9" \
  --header "Content-Type: application/json" \
  --data '{
    "evaluation": {
      "grammar": 7,
      "vocabulary": 7,
      "structure": 7,
      "spelling": 7,
      "creativity": 7,
      "notes": "Not bad",
      "prompt_response_id": 2
    }
  }'
