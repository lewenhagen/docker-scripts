@echo off
cls
title imagesorter-v2
echo I will now create the desired folders.
mkdir "Result" 2>nul || echo Folder Result already exists
mkdir "Unsorted" 2>nul || echo Folder Unsorted already exists

docker run -it -v "%cd%"/Result:/Result -v "%cd%"/Unsorted:/Unsorted lewenhagen/imagesorter-v2
