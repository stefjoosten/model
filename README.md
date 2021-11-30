This directory contains a prototype of a registry for medical professions, which follows the Dutch law "Wet BIG".

Prerequisites:
* Make sure that ports 80 and 443 on your laptop are available. (In other words: if you run a web server on your laptop, bring it down.)
* Make sure that docker is running on your laptop.

Here is the situation:

1. This directory is a git-clone of https://github.com/gedelaar/model. We will call this the working directory.
2. The file .ampersand shows that the file "Main.adl" in the working directory is what the compiler should start with.

Here is what you can do
3. Edit the file .env to choose a root password for the database and an ampersand password for your application that accesses this database. Please choose safer passwords than the ones shown, which are merely examples. DON't publish the .env file once it contains your passwords. If you make your own repository, take care that your passwords do not accidentally appear on github.
4. If you rename Main.adl, edit the Dockerfile, .ampersand, an this readme file to accommodate the new name.
5. Open a command line interface (CLI) and navigate to this directory. Call "docker compose build". This step bakes your image. Docker stores that image on your laptop.
6. Call "docker network create proxy". The configuration uses a docker network called "proxy" to connect to ports 80 and 443 of your laptop, so you can use your browser to play with your application.
7. Call "docker compose up -d". This instructs docker to deploy your application.
8. Go to your browser and navigate to localhost to access you application.
9. Press the red install button on your application to spin up the database under your application.

Now you are set to go and tinker with your application.

Voor Nederlandstalige kijkers: https://youtu.be/qPnaYkPclYE geeft wat tekst en uitleg bij het installeren van een stand-alone applicatie.