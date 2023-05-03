#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 docker.pkg.github.com/allfungit/a433-microservices/tree/proyek-pertama/item-app:v1

# Login ke GitHub Packages via Terminal
docker login docker.pkg.github.com -u allfungit -p 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

# Mengunggah image ke GitHub Packages
docker push docker.pkg.github.com/allfungit/a433-microservices/tree/proyek-pertama/item-app:v1
