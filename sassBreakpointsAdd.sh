read -r -p "Do you want to create a SASS Module? [y/n]" input
case $input in 
	[yY][eE][sS]|[yY])
 sasstype="Module"
;;
	[nN][oO]|[nN])
 sasstype="Theme"
;;
	*)
 echo "Invalid input..."
 exit 1
 ;;
esac
echo "Please Enter the name of the $sasstype"
read varname
echo "$sasstype Name: $varname"
read -p "Please enter the author name if not correct (Rebecca Rumble): " author
author=${author:-"Rebecca Rumble"}
echo "Author: $author"
# lowercasefolder=$varname | tr '[A-Z]' '[a-z]'
# typeset -l lowercasefolder
# echo $lowercasefolder
folder=${varname// /}
mkdir $folder
echo "Creating files..."
touch $folder/_base.scss
touch $folder/_481up.scss
touch $folder/_767down.scss
touch $folder/_768up.scss
touch $folder/_899down.scss
touch $folder/_900up.scss
touch $folder/_1029down.scss
touch $folder/_1030up.scss
touch $folder/_1240up.scss
touch $folder/_1400up.scss
touch $folder/_1600up.scss
touch $folder/_1900up.scss
echo "Files Created..."
cd $folder
for f in *.scss; do
echo "Processing $f file..."
viewport=$(basename "$f" ".scss")
echo "/****************************************************************" >> $f
echo "    $sasstype: $varname " >> $f
echo "    Viewport: ${viewport:1} " >> $f
echo "    Author: $author" >> $f
echo "****************************************************************/" >> $f
echo " " >> ../$f
echo "/* $varname " >> ../$f
echo "--------------------------------------------------------------------*/" >> ../$f
echo "@import \"$folder/${viewport:1}.scss\";" >> ../$f
done
echo "Breakpoints added to folder"

