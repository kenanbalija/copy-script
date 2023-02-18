# Script Description

This script is a bash script that goes through all the folders in the current directory, finds all image files (JPG, JPEG, PNG, and GIF), and copies them to a folder named "op_folder" located in the parent directory. The copied files are renamed with a folder prefix and a number, starting at 1 for each folder.

The script can be useful for organizing a large collection of images, by creating a separate folder for each folder of images and copying the images into the "op_folder" directory, with new filenames that are easier to manage.

## Usage

To use the script, simply save it to your local machine, navigate to the directory where your images are stored in a terminal, and run the script by typing:

./copy-script.sh

Make sure that the script is executable by running the following command:

chmod +x copy-script.sh


## Requirements

The script requires the `bash` shell to run. It should work on most Unix-based systems, including macOS and Linux. The script uses the `find` command to search for image files, so it may not work as expected on Windows or other non-Unix-based systems.

## Customization

The script can be easily customized to search for files with different extensions or to use a different folder prefix. Simply modify the script to fit your needs.

## License

This script is released under the MIT License. You are free to use, modify, and distribute the script as long as you include the original license file.
