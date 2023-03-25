#!/bin/bash -ex

yum -y update

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

. ~/.nvm/nvm.sh

yum -y install nodejs

mkdir -p /var/app

wget https://aws-tc-largeobjects.s3-us-west-2.amazonaws.com/ILT-TF-100-TECESS-5/app/app.zip

unzip app.zip -d /var/app/

cd /var/app/

npm install

npm start
