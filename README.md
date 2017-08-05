# cdsw-serve-docker

This repo is example of Docker image for PySpark serving API based on CDSW engine.

Original application code is here:
https://github.com/chezou/cdsw-simple-serving-python

## Usage

Run:

```
$ docker pull chezou/cdsw-serve
$ docker run --rm -p 5000:5000
```

## How to test

```
$ curl -v -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"Temperature":23.18,"Humidity":27.272,"Light":426,"CO2":721.25,"HumidityRatio":0.00478}' http://localhost:5000/api/predict
```
