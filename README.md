<p align="center">
  <img src="https://raw.githubusercontent.com/ReceiptParser/Application/master/docs/assets/dash_app.png">
</p>

# Receipt manager
Keep track of your receipt is pretty hard. You need to update the shop names, receipt date and a total of every receipt.

Why do we not use the digital advantage to our advantage? The receipt scanner solves multiple problems.  You don't have to keep track of your receipts, you safe (a lot) of time but still, see every important information in a blink of a second.

--- 

## Features
- IOS and Android application
- fast and easy receipt parser using OCR
- store receipts permanently in a SQL database
- minimal design
- no other services required

---

## Getting started

### For developers
First, import the project in Android Studio. After, you have to install the flutter plugins. 
Now, you can build the flutter application using the android studio app.

1. Import project in android studio (and install the flutter plugin)
2. Go to Build/Flutter/Build APK
3. Install the application

### For consumers
Download the precombiled binary. Check the checksum using following
```
shasum1 app-release.apk
cat app.apk.sha1
```

If the checksum matches you are good to go. Now, install the precompiled binaries at the release page. 

Now, you can insert, add and store receipts permanently. If you like to parse the receipt using OCR, you
have to do the following.

1. Read the server documentary
2. Clone the image server repository
3. Install the required python dependencies
4. Generate SSL certificates
5. Run the server

### In detail
#### Clone the repository over https
```
git clone https://github.com/ReceiptParser/Server
```

#### Install the python packages using `pip`
```
cd Server
sudo pip install -r requirements.txt
```

#### Generate an SSL certificate
```
make generate_cert
```

#### Start the image server
```
make serve
```

If the server is running, the server ip is shown in the server console. That's it.
<p align="center">
  <img src="https://i.imgur.com/xcwvmYa.png">
</p>

Now, change the server ip. In the application go to `Settings/Server/` and edit the server ip.
<p align="center">
  <img src="https://i.imgur.com/nob0QFz.png">
</p>

---

## Architecture
Parsing receipts is not only time consuming, it is moreover a very powerful task. 
Since mobile devices have a unacceptable performance, the parser uses a (traditional) client server architecture.

#### How it works
1. The User makes a photo of a receipt
2. The Application upload the receipt to the sever
3. The Sever parses the receipt and send the output (as json response) back to the application
4. The Application store the receipt in a SQL database

---

### TODOS
| Description  | Done?  | Priority | Fixed at |
|---|---|---| --- |
| Add loading screen indicator | yes | hight | 1.01 |
| Correct date parsing | yes | hight | 1.01 |
| Remove duplicate snackbar after parsing | no | hight | / |
| Add new categories | no | hight | / |
| Edit categories in edit widget | no | hight | / |

---

### Privacy
A lot of companies store and sell your data. This is the main reason why I started this project. 
I want to control my private data. Since you are hosting your own server, your don't have to
worry about that. No third party services are used. 

---

### Screenshots
<p align="left">
  <img src="https://raw.githubusercontent.com/ReceiptParser/Application/master/docs/assets/dash_app.png">
  
  <img src="https://raw.githubusercontent.com/ReceiptParser/Application/master/docs/assets/history_app.png">
  
  <img src="https://raw.githubusercontent.com/ReceiptParser/Application/master/docs/assets/edit_app.png">
  
  <img src="https://raw.githubusercontent.com/ReceiptParser/Application/master/docs/assets/settings_app.png">
  
  <img src="https://raw.githubusercontent.com/ReceiptParser/Application/master/docs/assets/screen_app.png">
</p>

---

## Credits
I use free logos.
| Logo | Creator | Url |
| --- | --- | --- |
| Educator logo | Payungkead | https://www.flaticon.com/free-icon/global-education_3379636?term=education&page=1&position=28 |
| Grocery logo | Freepik | https://www.flaticon.com/free-icon/groceries_3050159?term=groceries&page=1&position=7 |
| Icon pack | unknown | https://www.flaticon.com/packs/retail-59?k=1602359120540 |
| Health icon |  Eucalypt | https://www.flaticon.com/free-icon/health-check_2463800?term=health&page=1&position=6 |
