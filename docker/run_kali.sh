#!/bin/bash

docker build -t kali .
docker run -it kali /bin/bash
