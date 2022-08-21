link=$1
mkdir tugas
cd tugas
touch tugas1.txt
echo "Body website $link" >> tugas1.txt
response=$(curl $link)
echo "$response" >> tugas1.txt
echo "" >> tugas1.txt