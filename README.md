# webleaker
Start grapping the Emails, BTC, and Html Comments in pdfs htmlfiles js that could be useful for your reconnaissance.

## Installation via docker
make sure that you have installed docker.

```console
sudo apt install docker.io
```

start docker service 
```console
sudo systemctl start docker
```

clone the repository
```console
git clone https://github.com/thisshehab/webleaker.git
cd webleaker
```
build the image 
```console
sudo docker build -t webleaker .
```
## Usage
replace the file yourinput.txt with yours one, make sure that the file format like this.
<br>
http://example.com <br>
https://example.com <br>
and so on...

```console
sudo docker run -v ./yourinput.txt:/app/input.txt -it webleaker
```
