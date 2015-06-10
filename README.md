## Docker ecCodes
ecCodes Docker image for testing purposes.

## Building image clonning this repository
Build image and run container (cloning this Git repository):

```bash
$ git clone https://github.com/GeographicaGS/Docker-ecCodes.git Docker-ecCodes
$ cd Docker-ecCodes
$ export DATAFOLDER="-v /folder_with_your_testdata/:/home/datafolder"
$ docker build -t geographica/eccodes:0.11 .
$ docker run $DATAFOLDER --name eccodes -it --rm geographica/eccodes:0.11 /bin/bash
`
