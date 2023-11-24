rm -drf tmp &&
mkdir tmp &&
cd tmp &&
wget -nc https://gtaconnected.com/downloads/GTAC-Server-Linux-$gtacver.tar.gz &&
tar -zxvf GTAC-Server-Linux-$gtacver.tar.gz &&
rm -rf server.xml GTAC-Server-Linux-$gtacver.tar.gz &&
cp -rf * ../ &&
cd ../ &&
rm -drf tmp
