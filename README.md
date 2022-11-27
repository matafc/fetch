### How to run

To build and enter the container
````
docker build -t fetch . 
docker run -it fetch
````

Once in the container, you will be in a `sh` session. You can run the command from here

````
./fetch --metadata https://www.google.com
````

You can also mount the volume to persist data, and change the entrypoint to run directly
````
docker run -v "$(pwd)":/usr/src/app --entrypoint ./fetch fetch --metadata https://www.google.com
````