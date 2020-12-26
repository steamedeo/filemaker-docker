# A FileMaker Server Docker Image

A FileMaker Server docker image.

## Command to build

```
docker build -t fms19 .
```

## Command to start

```
docker run -it -p 5003:5003 -p 16000:16000 -p 443:443 -p 80:80 -p 16001:16001 fms19
```

## Reset default credentials

```
fmsadmin resetpw -p [pass] -z 1234
```
