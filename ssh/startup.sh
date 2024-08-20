#!/bin/bash

# Define the password file location
PASSWORD_FILE="/usr/start/user_password.txt"

# Check if the password file exists
if [ -f "${PASSWORD_FILE}" ]; then
    # If the password file exists, read the password from it
    USER_PASSWORD=$(cat ${PASSWORD_FILE})
else
    # If the password file doesn't exist, check if USER_PASSWORD is already set
    if [ -z "${USER_PASSWORD}" ]; then
        # If USER_PASSWORD is not set, generate a random 8-character password
        USER_PASSWORD=$(< /dev/urandom tr -dc A-Za-z0-9 | head -c8)
    fi
    # Save the generated or existing USER_PASSWORD to the password file
    mkdir -p "$(dirname "${PASSWORD_FILE}")"
    echo "${USER_PASSWORD}" > "${PASSWORD_FILE}"
    # Set the password for the 'sealos' user
    echo "sealos:${USER_PASSWORD}" | sudo chpasswd
fi

# Display the password for logging purposes (optional)
echo "USER_PASSWORD=${USER_PASSWORD}"

# Start the SSH daemon
/usr/sbin/sshd 