#!/bin/bash

docker build -t pennsive/heudiconv:0.8.0 .
docker push pennsive/heudiconv:0.8.0
