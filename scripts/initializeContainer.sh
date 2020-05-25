# Command will host on a random port at the default config and content directories
# Note: the -P option will map the default ports of 80 and 443 to randomy ports between 49153 and 65535.
# This is a good default case to avoid collisions with mulptiple NGINX hostings. 
`docker run --name <container_name> -P -d nginx`

# Will host content and configs from a specified directory in a read only fashion.
`docker run --name <container_name> -v <path_to_content>:/usr/share/nginx/html:ro -v <path_to_configs>:/etc/nginx:ro -P -d nginx`

# Example:
# Content hosted from: /var/www
# Configs hosted from: /var/nginx/conf
`docker run --name <container_name> -v /var/www:/usr/share/nginx/html:ro -v /var/nginx/conf:/etc/nginx:ro -P -d nginx`
# Example with Windows paths:
`docker run --name <container_name> -v /d/SideProjects/Code/GitHub/nginx_docker/src:usr/share/nginx/html:ro -P -d nginx`

# Use Docker to remap ports for this server and designate hosting on a specific port.
# Example: -p 80:8080 
# The first parameter specifies the port in the Docker host, while the second parameter is mapped to the port exposed in the container.
# Requests coming in on port 80, will be servered to the processes in the container on port 8080
`docker run --name <container_name> -p 80:8080 -d nginx`

