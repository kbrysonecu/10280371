#!/bin/bash -x

read -sp "Password: " pass_var
#user enters password and hides input and stays on that line
echo -cs "$pass_var" | sha256sum > val_a
cat secret.txt > val_b


if [ "$val_a" = "$val_b" ]; then
    echo "Access granted."
    exit 0
else
    echo "Access denied."
    exit 1
fi