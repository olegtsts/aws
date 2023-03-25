#!/bin/bash -ex

yum -y update

curl -sL https://rpm.nodesource.com/setup_15.x | bash -

yum -y install nodejs

mkdir -p /var/app

wget https://aws-tc-largeobjects.s3-us-west-2.amazonaws.com/ILT-TF-100-TECESS-5/app/app.zip

unzip app.zip -d /var/app/

cd /var/app/

npm install

npm start
