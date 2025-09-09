#!/bin/bash

# File to store triggers and responses
DB_FILE="triggers.txt"

# Initialize database if it doesn't exist
touch "$DB_FILE"

# Step 1: Train a trigger
read -p "Enter a trigger word: " trigger
read -p "Enter the response for this trigger: " response

# Save trigger and response
echo "$trigger|$response" >> "$DB_FILE"
echo "Trigger saved!"

# Step 2: Ask a question
echo
read -p "AI asks: What's the secret word? " answer

# Step 3: Check if the user's response matches a trigger
matched=false
while IFS="|" read -r t r; do
    if [[ "$answer" == "$t" ]]; then
        echo "AI responds: $r"
        matched=true
        break
    fi
done < "$DB_FILE"

# Default response if no trigger matches
if [ "$matched" = false ]; then
    echo "AI responds: I don't know that one yet!"
fi
