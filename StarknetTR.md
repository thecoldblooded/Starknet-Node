# 1) Node kurmadan önce Alchemy üzerinden endpoint alalım.

![image](https://user-images.githubusercontent.com/101462877/204107974-1f30a9a5-967d-4f13-82bc-93a7a620e450.png)

## [Alchemy](https://dashboard.alchemy.com/) üzerinde hesabınız yoksa hesap açıp `Create App` diyoruz.

![image](https://user-images.githubusercontent.com/101462877/204107999-1322fbf4-d186-4009-a891-1166c363226a.png)

## Bir isim girip `Create App` diyelim.

![image](https://user-images.githubusercontent.com/101462877/204108012-44cc230d-acb0-475a-9db0-a0444c79a514.png)

## Oluşturduğumuz App için `View key`'e tıklayalım.

![image](https://user-images.githubusercontent.com/101462877/204108049-ba504978-df34-45cb-ae9c-60091a6fa8c0.png)

## Açılan kısımda `https` kısmını kopyalayalım.


# 2) Node'u kurmaya başlayalım.

## 2a) Script ile kurulum.

``` 
wget -O StarknetTR.sh https://raw.githubusercontent.com/thisislexar/Starknet-Node/main/StarknetTR.sh && chmod +x StarknetTR.sh && ./StarknetTR.sh
```


## 2b) Manuel kurulum.

Node bilginizi geliştirmek adına dilerseniz [Manuel Kurulum](https://github.com/thisislexar/Starknet-Node/blob/main/Starknet_manualTR.md) da yapabilirsiniz.


# 3) Devam.

## Screen açın.

```
screen -S starknet
```


## Node'u başlatın.

```
mkdir -p $HOME/pathfinder
docker run \
  --rm \
  -p 9545:9545 \
  --user "$(id -u):$(id -g)" \
  -e RUST_LOG=info \
  -e PATHFINDER_ETHEREUM_API_URL="<ALCHEMY'DEN ALDIĞINIZ HTTPS URL'Sİ>" \
  -v $HOME/pathfinder:/usr/share/pathfinder/data \
  eqlabs/pathfinder
```

Bu kısımda hocam tırnak kaldıralım mı hocam > kaldıralım mı soruları geldi bile, o yüzden aşağıya örnek bir komut bırakıyorum.

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

# Node'umuz senkronize olmaya başladı.

![image](https://user-images.githubusercontent.com/101462877/204108544-bdf4ab06-18cb-4246-bec8-2f17909d8691.png)

