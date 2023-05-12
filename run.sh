sudo docker build -t awojcik95612/95612:1.0 --no-cache . \
&& sudo docker run -itd -p 3000:3000 --name awojcik95612 awojcik95612/95612:1.0"" \
&& docker image inspect awojcik95612/95612:1.0 | jq '.[].RootFS.Layers' \
&& echo "go to http://localhost:3000/" \
&& docker scout cves awojcik95612/95612:1.0 \
&& echo "tresc logow z uruchomionego kontenera:" \
&& docker exec -it awojcik95612 cat logs/logs.log
