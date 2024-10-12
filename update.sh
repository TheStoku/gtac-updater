#!/bin/sh

location='https://gtaconnected.com/versions/server/'

if [ -z ${gtacver} ]; then
  echo 'GTA:C Version not set. Downloading recent.'

  if output=$(curl -L {${location}} | grep -o -P '(?<=<ul class="downloads"><li>).*?(?=<ul>)'); then
    echo 'Received recent version:' "${output}"
    export gtacver=${output}
  fi
fi

rm -drf tmp &&
mkdir tmp &&
cd tmp &&
wget -nc https://gtaconnected.com/downloads/GTAC-Server-Linux-$gtacver.tar.gz &&
tar -zxvf GTAC-Server-Linux-$gtacver.tar.gz &&
rm -rf server.xml GTAC-Server-Linux-$gtacver.tar.gz &&
cp -rf * ../ &&
cd ../ &&
rm -drf tmp
