path="/Users/teng/Desktop/tmp";

function findText(){
cat ${1} | grep -e "UIImage imageNamed:@\".*\"" --color | grep -e "@\".*\"" >> $2;
}

function findImageName(){
cat ${1} | while read line
do
grep -e "UIImage imageNamed:@\".*\"" -o | sed 's/UIImage imageNamed://g' >> $2;
done
}

cd ${path};
files=$(find . -name "*.m");
touch allFilesList.txt;
echo ${files} > allFilesList.txt;
cat allFilesList.txt | tr " " "\n" > filesList.txt;

cat filesList.txt | while read line
do
name=$(echo ${line} | sed  's/\n//g' | sed 's/\.\///g');
findText ${name} mach.txt;
done
if [ -f notSort.txt ]; then
rm notSort.txt;
fi
findImageName mach.txt notSort.txt;
cat notSort.txt | sort -u > sort.txt;
cat sort.txt |tr "\n" "," > result.txt;
rm mach.txt;
rm sort.txt
rm notSort.txt
rm filesList.txt;
rm allFilesList.txt;
