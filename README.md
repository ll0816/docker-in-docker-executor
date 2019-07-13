# Docker-in-Docker Executor
This docker image is a to-go solution to run various CI Pipeline(like `gitlab`, `github`, ...) when implementing docker-in-docker method.
It is built on the top of lightweight `Alpine` Linux distribution and have `docker`, `azure cli`, `kubectl` and `helm` installed. 
It is capable of building and pushing docker images/helm charts to remote ACR and completing other tasks in pipeline.

Supported tags and release links

* [1.0.0](https://github.com/ll0816/docker-in-docker-executor/releases/tag/1.0.0): 
  * `docker`=18.09 
  * `azure-cli`=2.0.68 
  * `kubectl`=1.13.3 
  * `helm`=2.14.1 
  * `alpine`=3.10