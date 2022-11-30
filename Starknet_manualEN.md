
# Root permission.


```
sudo su
cd
```


# Update your server and get the necessary libraries.

```
sudo apt update && sudo apt upgrade -y
```
```
sudo apt install pkg-config curl git build-essential libssl-dev -y
```
```
sudo apt install docker.io -y
```


# Install screen.

```
sudo apt install screen -y
```

# Install binaries.

```
git clone --branch v0.4.1 https://github.com/eqlabs/pathfinder.git
```
