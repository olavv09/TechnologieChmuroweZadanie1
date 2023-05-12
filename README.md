# Aleksandra Wójcik
LABORATORIUM TECHNOLOGII CHMUROWYCH 
## Prerequisites
1. docker installed
2. jq installed
3. node & npm installed
## Deployment

To deploy this project run

```bash
  bash run.sh
```

## Polecenia
Zbudowanie opracowanego obrazu kontenera
```bash
  sudo docker build -t awojcik95612/95612:1.0 --no-cache .
```
Uruchomienie kontenera na podstawie zbudowanego obrazu
```bash
  sudo docker run -itd -p 3000:3000 awojcik95612/95612:1.0""
```
Sposób uzyskania informacji, które wygenerował serwer w trakcie uruchamiana kontenera
```bash
  docker exec -it awojcik95612 cat logs/logs.log
```
Sprawdzenie, ile warstw posiada zbudowany obraz
```bash
  docker image inspect awojcik95612/95612:1.0 | jq '.[].RootFS.Layers'
```
