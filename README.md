## Pre-requisites: Docker setup

### Linux:
- Install Docker. Instructions for your OS can be found in the [docker installation page](https://docs.docker.com/engine/installation/)

### Mac & Windows:
- *WINDOWS ONLY*: MAKE SURE you have virtualization enabled (instructions included on the docker setup). You might have to enable it on the BIOS.
- Install [Docker ToolBox](https://www.docker.com/products/docker-toolbox)
- Assign at least 4GB of memory to the VM, and if possible, increase the number of cores as well.
- Enable forwarding of ports 4040 and 9995 from the VM to your local host. To access the VM settings:
    - Open VirtualBox
    - Click on the docker vm (usually, it's "default") and click "Settings"
        - On the "System" menu, you can increase the RAM and the amount of cpus used by the VM.
        - On the "Network" menu, click "Advanced" and then click "Port Forwarding". Add an entry like this (the name isn't really important..)
            - Name: p9995
            - Protocol: TCP
            - Host IP: 127.0.0.1
            - Host Port: 9995 (You can change it if you are using it for something else)
            - Guest IP: (Leave it blank)
            - Guest Port: 9995
        - Do the same for port 4040

## Setup the training docker image

- Clone the git repository (if you don't have git, just [browse to the repository](https://github.com/alghimo/intro-to-dataframes) and click "Download as ZIP":
```
git clone https://github.com/alghimo/intro-to-dataframes.git
```

- Build the image:
    - Linux: Just open a terminal
    - Windows / Mac: Open the Docker Quickstart Terminal.
    - Build the image and run it. Assuming that you cloned the repo to "C:\Users\Foo\Projects\intro-to-dataframes":
```
cd /c/Users/Foo/Projects/intro-to-dataframes/setup/
docker build -t alghimo/intro-to-dataframes:latest .
docker run -d -p 9995:9995 -p 4040:4040 -h zeppelin --name zeppelin alghimo/intro-to-dataframes:latest -d
```
    - Browse to [http://localhost:9995](http://localhost:9995)

## Stopping / restarting the environment.

- Stop the training environment
```
docker stop zeppelin
```
- Additionally, on Windows / Mac, if you won't not keep working with Docker:
```
docker-machine stop default
```

- Start the existing training environment
```
docker start zeppelin
```
*NOTE*: If for some reason Zeppelin is not working after starting the environment again, you can manually restart it by running this:
```
docker exec zeppelin /zeppelin/bin/zeppelin-daemon.sh restart
```
