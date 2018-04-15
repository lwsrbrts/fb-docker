# Build the docker image with a tag
docker build -t lwsrbrts/fb-magento:1.0.1 .

# Docker run (on Windows) to link volumes for persistent storage
# The App Service on Containers likely maps /home/site/wwwroot to a folder on the host in the same manner
docker run -v D:/docker/share/wwwroot:/home/site/wwwroot --rm -i -p 2222:2222 -p 80:8080 -p 8080:8080 lwsrbrts/fb-magento:1.0.1
docker run -v D:/docker/share/wwwroot:/home/site/wwwroot --rm -i -p 2222:2222 -p 80:8080 lwsrbrts/fb-magento:1.0.1


# Upload the image to docker hub
docker push lwsrbrts/fb-magento:1.0.1