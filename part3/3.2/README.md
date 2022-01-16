### Build the image with
```
docker build . -t {IMAGE_NAME}
```
### Run the application
```
docker run -it -v /var/run/docker.sock:/var/run/docker.sock {IMAGE_NAME}
```
