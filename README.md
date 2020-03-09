# mdbook_docker
go to the directory where you cloned the wiki git repository (/opt/wiki or /Users/username/wiki)
```code
cd /opt/wiki
sudo docker run -it -v $PWD:/opt/wiki -p 3000:3000 -p 3001:3001 crimsoncorelabs/mdbook
```