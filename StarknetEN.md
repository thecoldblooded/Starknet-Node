
# 1) Before installing node, get your endpoint from Alchemy.

![image](https://user-images.githubusercontent.com/101462877/204107974-1f30a9a5-967d-4f13-82bc-93a7a620e450.png)

## If you do not have an account on [Alchemy](https://dashboard.alchemy.com/), open an account and click `Create App`.

![image](https://user-images.githubusercontent.com/101462877/204107999-1322fbf4-d186-4009-a891-1166c363226a.png)

## Enter a name and click `Create App`.

![image](https://user-images.githubusercontent.com/101462877/204108012-44cc230d-acb0-475a-9db0-a0444c79a514.png)

## Click `View key` for the App you created.

![image](https://user-images.githubusercontent.com/101462877/204108049-ba504978-df34-45cb-ae9c-60091a6fa8c0.png)

## Copy the `https` part in the opened section.


# 2) Install the node.

## 2a) Scripted installation

``` 
wget -O StarknetEN.sh https://raw.githubusercontent.com/thisislexar/Starknet-Node/main/StarknetEN.sh && chmod +x StarknetEN.sh && ./StarknetEN.sh
```


## 2b) Manual installation

You can also install the node [manually](https://github.com/thisislexar/Starknet-Node/blob/main/Starknet_manualEN.md) to improve your Node knowledge.

# 3) Continue.

## Open a screen.

```
screen -S starknet
```


## Start your node.

```
mkdir -p $HOME/pathfinder
docker run \
  --rm \
  -p 9545:9545 \
  --user "$(id -u):$(id -g)" \
  -e RUST_LOG=info \
  -e PATHFINDER_ETHEREUM_API_URL="<HTTPS URL FROM ALCHEMY>" \
  -v $HOME/pathfinder:/usr/share/pathfinder/data \
  eqlabs/pathfinder
```

Here is a sample command.

```
mkdir -p $HOME/pathfinder
docker run \
  --rm \
  -p 9545:9545 \
  --user "$(id -u):$(id -g)" \
  -e RUST_LOG=info \
  -e PATHFINDER_ETHEREUM_API_URL="https://eth-mainnet.g.alchemy.com/v2/COsy1IzxkLxxxkRyxxxIpxwJxxxx" \
  -v $HOME/pathfinder:/usr/share/pathfinder/data \
  eqlabs/pathfinder
```

# Your node is syncing

![image](https://user-images.githubusercontent.com/101462877/204108544-bdf4ab06-18cb-4246-bec8-2f17909d8691.png)



# Lastly, there is a something like tweeting and sending the tweet link to Discord, you can do it if you wish.


## Go to [Alchemy](https://dashboard.alchemy.com/) and click `View Details`. 

![image](https://user-images.githubusercontent.com/101462877/204154577-20645594-d703-451a-b8de-41d18fa5ea67.png)

## Take screenshot and tweet it.

![image](https://user-images.githubusercontent.com/101462877/204154627-e45da80b-f540-4d3d-b350-fc7971416c91.png)

## Go to [Discord](https://discord.gg/qypnmzkhbc) and send your tweet link.

![image](https://user-images.githubusercontent.com/101462877/204154708-d7d9caf2-390e-45d8-82d9-5c93f3e2cf2f.png)
