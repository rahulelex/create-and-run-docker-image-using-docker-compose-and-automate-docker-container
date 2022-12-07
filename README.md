# Create an image and run docker container with single command

## Features
- Create an image: image1 with tag:v1 by loading an ubuntu image of version 20.04.
- Start a container as container_name from the newly image created.
- Container start in detach mode.
- Automate docker container.


#### Usage
1. Build an image if do not exist and start docker container in detach mode:
```sh
sudo docker compose -f docker-compose.yml up -d
```
2. To automate docker container:
- If you want to add some scripts on start of container, steps to be followed:
-- open "startup.sh" file using nano.
-- write your code to run bash file before 'exec "$@"'
```sh
example:
#!/bin/bash
set -e
source /root/.bashrc
echo "Hello"
# Can write code here
# bash path_of_script.sh
exec "$@"
```
## License
**Free Software, Hell Yeah!**

## Authors
- [Rahul Gupta](https://github.com/rahulelex)