# Docker-in-Docker Executor
This docker image is a to-go solution to run various CI Pipeline(like `gitlab`, `github`, ...) when implementing docker-in-docker method.
It is built on the top of light `Alpine` Linux distribution and have `docker`, `azure cli`, `kubectl` and `helm` installed. 
It is capable of building and pushing docker images/helm charts to remote ACR and completing other tasks in pipeline.

