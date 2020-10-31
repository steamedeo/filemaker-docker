# A FileMaker Server Docker Image

## Command to build

```
docker build -t fms19 .
```

## Command to start

```
docker run -it -p 5003:5003 -p 16000:16000 -p 443:443 -p 80:80 -p 16001:16001 fms19
```
