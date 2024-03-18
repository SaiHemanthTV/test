#!/bin/bash
WEBSITE="http://54.156.75.190:8080/testenv/"  # Replace with the URL you want to check

# Make a request to the website and retrieve the HTTP status code
HTTP_STATUS=$(curl -Is "$WEBSITE" | head -1 | cut -d' ' -f2)

if [ "$HTTP_STATUS" = "200" ]; then
    echo "$WEBSITE is up!"
else
    echo "$WEBSITE is down."
fi
