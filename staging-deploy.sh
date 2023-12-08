#!/bin/bash


cp .env.staging .env
sudo docker compose down && sudo docker compose up -d 