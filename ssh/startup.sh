#!/bin/bash

# Define the password file location
PASSWORD_FILE="/usr/start/user_password.txt"

# Check if the password file exists
if [ ! -f "${PASSWORD_FILE}" ]; then
    # If the password file doesn't exist, check if USER_PASSWORD is already set
    if [ -z "${SEALOS_DEVBOX_PASSWORD}" ]; then
        # If USER_PASSWORD is not set, generate a random 8-character password
        SEALOS_DEVBOX_PASSWORD=$(< /dev/urandom tr -dc A-Za-z0-9 | head -c8)
    fi
    # Save the generated or existing USER_PASSWORD to the password file
    touch "${PASSWORD_FILE}"
    # Set the password for the 'sealos' user
    echo "sealos:${SEALOS_DEVBOX_PASSWORD}" | sudo chpasswd
    # Display the password for logging purposes (optional)
    echo "SEALOS_DEVBOX_PASSWORD=${SEALOS_DEVBOX_PASSWORD}"
fi
# Start the SSH daemon
/usr/sbin/sshd
sleep infinity 