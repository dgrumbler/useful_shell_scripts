echo "Please Enter the name of the module"
read varname
echo "Module Name: $varname"
read -p "Please enter the author name if not correct (Rebecca Rumble): " author
author=${author:-"Rebecca Rumble"}
echo "Author: $author"
echo "Creating files..."
touch _base.scss
touch _481up.scss
touch _767down.scss
touch _768up.scss
touch _899down.scss
touch _900up.scss
touch _1029down.scss
touch _1030up.scss
touch _1240up.scss
touch _1400up.scss
touch _1600up.scss
touch _1900up.scss
echo "Files Created..."
for f in *.scss; do
echo "Processing $f file..."
viewport=$(basename "$f" ".scss")
echo "/****************************************************************" >> $f
echo "    Theme: $varname " >> $f
echo "    Viewport: ${viewport:1} " >> $f
echo "    Author: $author" >> $f
echo "****************************************************************/" >> $f
done
echo "Breakpoints added to folder"