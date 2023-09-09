# datascience_jupyter_as

Test repo for autobuilding dockers


## Builkd image Using Docker Compose 

```bash
$ cd path/to/directory_containing_yaml_and_Dockerfile
# Build:
$ docker-compose build
# Start:
$ docker-compose up
# Stop:
$ docker-compose down
# where the Dockerfile is the current Docker image for running the analyses, and yaml is the configuration file.
# Alternatively, you can use a single command: docker-compose up --build


## push to docker repo

- Create a repo on Docker Hub.
- Tag your existing image using the Docker Hub username and repo name: docker tag existing-image hub-user/repo-name[:tag].
- Now you can push this repository to the registry designated by its name or tag: docker push hub-user/repo-name:tag.
- The public URL to the Docker image is: docker.io/username/repoName:tag.

## Link docker to github and autobuild

follow this :
https://docs.docker.com/docker-hub/builds/?_gl=1*1k6k1ld*_ga*OTI4MDI4NjkzLjE2OTQxMTY5NzM.*_ga_XJWPQMJYHQ*MTY5NDI1NjUxNi4zLjEuMTY5NDI1ODc5NC40NC4wLjA.

and this

https://docs.docker.com/docker-hub/builds/?_gl=1*1ja5mm8*_ga*OTI4MDI4NjkzLjE2OTQxMTY5NzM.*_ga_XJWPQMJYHQ*MTY5NDI1NjUxNi4zLjEuMTY5NDI1OTM3OS41OS4wLjA.


my build rule looks like this:
<img width="1111" alt="Screenshot 2023-09-09 at 8 51 50 AM" src="https://github.com/amnahsiddiqa/datascience_jupyter_as/assets/28387956/f6973764-73df-46d4-954c-673a9c389512">


- created Github actions yaml workflow file from template and populated it with my repo/image name
- added secret keys to git repo for docker credetials
 
