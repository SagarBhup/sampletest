install_path=/opt/ABBYY/FREngine12

echo -- Run licensing service
service_folder="$install_path/CommonBin/Licensing"
LD_LIBRARY_PATH="$service_folder" "$service_folder/LicensingService" /start

echo -- Run FRE sample
cd "$install_path/Samples/CommandLineInterface"
LD_LIBRARY_PATH=../../Bin ./CommandLineInterface -pi -if ../SampleImages/Sample.tif PDF -of ./Sample.pdf

/bin/bash