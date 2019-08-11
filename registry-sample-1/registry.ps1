docker run --rm -d -v ${pwd}\registry-data:/var/lib/registry -p :5000:5000 --name registry registry
docker run --rm -it 127.0.0.1:5000/hello-world
docker container kill registry
