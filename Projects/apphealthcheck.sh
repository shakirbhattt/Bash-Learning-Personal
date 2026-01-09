#!/bin/bash

URL="http://localhost:8080"
# Application URL

STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL)
# curl → make HTTP request
# -s → silent
# -o /dev/null → discard body
# -w → write output
# %{http_code} → HTTP status code

if [ "$STATUS" -eq 200 ]; then
# -eq → equal

  echo "Application is healthy"
else
  echo "Application is DOWN"
fi
