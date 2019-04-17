#! /bin/bash


File_source=$1
 

echo "The build package is coping to Deploy"
echo -en '\n' 
sudo cp $File_source/*.jar /home/home/Documents/Fedor_Project/Maven/Deploy

echo -en '\n'
echo -en '\n'


echo "The Package Deployed"
