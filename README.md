# webleaker
A tool that grap the Emails, BTC, and Html Comments in pdfs htmlfiles js that could be useful for your reconnaissance

## Installation via docker
make sure that you have installed docker 

```console
apt install docker.io
```

start docker service 
```console
systemctl start docker
```

clone the repository
```console
git clone https://github.com/thisshehab/webleaker.git
cd webleaker
```
build the image 
```console
docker build -t webleaker .
```
## Usage
replace the file yourinput.txt with yours one, make sure that the file format like this 
<br>
http://example.com <br>
https://example.com 
...

```console
sudo docker run -v ./yourinput.txt:/app/input.txt -it webleaker
```
