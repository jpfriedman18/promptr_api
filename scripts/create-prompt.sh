curl --include --request POST http://localhost:3000/prompts \
  --header "Content-Type: application/json" \
  --data '{
    "prompt": {
      "title": "Second Prompt",
      "text": "Write another essay"
    }
  }'
