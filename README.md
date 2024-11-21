# Git Credential Helper Script

This script sets up a **custom Git credential helper** using a Bash script.

## What does this script do?

1. Creates an executable file (`credentials.sh`) in the `/apps` directory.
2. The script outputs Git credentials using the following environment variables:
   - `GIT_USERNAME`: Your Git username.
   - `GIT_PASS`: The associated password for your Git account.
3. Configures Git to use this script as a **credential helper**, allowing Git to automatically access the credentials stored in the environment variables.

The generated `credentials.sh` file will contain the following:

```bash
#!/bin/bash
sleep 1
echo username=$GIT_USERNAME
echo password=$GIT_PASS
```

## How to use it?

1. Make sure you have the `GIT_USERNAME` and `GIT_PASS` environment variables set up:
   ```bash
   export GIT_USERNAME="your_username"
   export GIT_PASS="your_password"
   ```
2. Run the script to configure the credential helper:
   ```bash
   bash git_credential_helper.sh
   ```
3. Git will now use the credentials provided by the script automatically for operations like `git clone`, `git pull`, etc.
