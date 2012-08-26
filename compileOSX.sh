#! /bin/bash

echo "Compiling YACReader"
cd ./YACReader
qmake -spec macx-g++
make
cd ..

echo "Compiling YACReaderLibrary"
cd ./YACReaderLibrary
qmake -spec macx-g++
make
cd ..

echo "Configuring release apps"

cp -R ./YACReader/YACReader.app ./YACReader.app
cp -R ./YACReaderLibrary/YACReaderLibrary.app ./YACReaderLibrary.app

./releaseOSX.sh


echo "Copying to destination folder"
dest='YACReader-'$1' MacOSX-Intel'
mkdir "$dest"
cp -R ./YACReader.app "./${dest}/YACReader.app"
cp -R ./YACReaderLibrary.app "./${dest}/YACReaderLibrary.app"
cp ./COPYING.txt "./${dest}/"
cp ./README.txt "./${dest}/"

cp ./images/db.png "./${dest}/"
cp ./images/coversPackage.png "./${dest}/"

echo "Creating dmg package"
#tar -czf "${dest}".tar.gz "${dest}"
hdiutil create "${dest}".dmg -srcfolder "./${dest}" -ov

echo "Done!"
