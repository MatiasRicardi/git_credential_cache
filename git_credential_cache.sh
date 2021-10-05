#creating executable
echo '#!/bin/bash' > /apps/credentials.sh
echo "sleep 1" >> /apps/credentials.sh
echo "echo username=$GIT_USERNAME" >> /apps/credentials.sh
echo "echo password=$GIT_PASS" >> /apps/credentials.sh

#adding executable to git credential helper
git config --global credential.helper "/bin/bash /apps/credentials.sh"

