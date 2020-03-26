# mdbook_docker
go to the directory where you cloned the wiki git repository (/opt/wiki or /Users/username/wiki)
```code
cd /opt/wiki
sudo docker run -it -v $PWD:/opt/wiki -p 3000:3000 -p 3001:3001 crimsoncorelabs/mdbook
```

Manual local build
====
```
cd ~
git clone URL_TO_YOUR_WIKI wiki
cd ~/wiki
docker build -t docker_mdbook:lean .
docker image ls -a *mdbook
docker run -it --name mdbook_lean -v $PWD:/opt/wiki -p 3000:3000 -p 3001:3001 docker_mdbook:lean
```