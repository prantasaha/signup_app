#!/bin/bash


cp .env.production .env
sudo docker compose down && sudo docker compose up -d 