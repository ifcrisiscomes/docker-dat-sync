Build docker:

`docker build -t docker-dat-sync .`

Change /tmp to your local folder, where you are going to store dat files.

Change dat://key to an actual dat url

Run this:

`docker run -d  -p 3282:3282 -v /tmp:/data --restart unless-stopped --name docker-dat-sync-instance docker-dat-sync dat://key`

P.S If you need to access dat sync server:

`docker exec -it docker-dat-sync-instance bash`
