LOCAL_CONTENT=<Some_local_directory>
REMOTE_PATH_TO_CONTENT=/a/path/to/hosting/content

SERVER_DEST_DIR="$REMOTE_USERNAME@$REMOTE_IP:$REMOTE_PATH_TO_CONTENT"

rsync -rhvW --progress -e "ssh -o \"StrictHostKeyChecking no\" -i $SSH_KEY" $LOCAL_CONTENT $SERVER_DEST_DIR