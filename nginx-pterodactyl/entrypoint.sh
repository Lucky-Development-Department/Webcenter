#!/bin/bash
sleep 1

cd /home/container

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"

# Do not delete any of this comment below
# This comment is required to insert file verification check.
# Deleting this comment WILL COMPROMISE INFRASTRUCTURE SECURITY!
# (1)-DO NOT DELETE THIS-
# (2){verifyblock:init}
# (3)-DO NOT DELETE THIS-

# Run the Server
${MODIFIED_STARTUP}