#!/bin/bash

for user in dev1 dev2 dev3
# Loop through usernames

do
  useradd $user
  # Create user

  echo "$user created"
  # Print confirmation
done
