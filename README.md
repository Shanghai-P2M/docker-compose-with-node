# docker-compose-with-node
Adds docker-compose and nodejs to the [offcial docker image](https://hub.docker.com/_/docker/).

Can be used as a runner in GitLab like this:

```
docker exec -it gitlab-runner \
  gitlab-runner \
    register -n \
             --name "docker-node" \
             --tag-list "docker-node" \
             --docker-image "shealtiel/docker-compose-with-node:node14.16.1-r1-dc1.27.4-r0" \
             --docker-privileged \
             --docker-volumes "/var/run/docker.sock:/var/run/docker.sock" \
             --docker-volumes "/cache"
```
