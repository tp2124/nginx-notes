# Summary
Playing around with understanding NGINX + Docker workflow for hosting static HTML pages.
This is great for many of the features, but it can be done for hosting static HTML with great ease.
Pros: 
* Get editing of static pages on save of the file and see immediate updates.
* Easy to stand up locally and see similar results to server.
* Can upload files to server and changes will be reflected on the next query immediately. No restarting of the container or instance.

# NGINX Notes
* Default paths for container:
    * configs: `/etc/nginx`
    * content: `/usr/share/nginx/html`

# References
* https://www.docker.com/blog/tips-for-deploying-nginx-official-image-with-docker/
* For introduction level materials about setting configurations in a file: https://www.nginx.com/blog/deploying-nginx-nginx-plus-docker/ 