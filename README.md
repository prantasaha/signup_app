
# signup_app
A signup app made with react, django, postgres & fluentd. Fully dockerized. 


Instruction to run the project:
1. This project is created in such way that Separate credentials were used for staging and production. To run for staging execute the staging-deploy.sh & for production execute the production-deploy.sh. For both cases images for both frontend & backend will be pulled from dockerhub. Apllication will run on http://localhost:8000/
2. Data seed : A dummy sql file is given to repo in case of database failure so the local development doestn't get interrupted. To seed this dummy data into container execute the seed-db.sh script
3. Logging : A Fluentd container is used for logging. All the container logs will be written to repo's /fluentd/logs directory in real time.


