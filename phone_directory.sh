
#!/bin/bash

while  :

do

echo "welcome to the directory"
echo "1. Add a contact"
echo "2. Search contacts"
echo "3.Delete contacts"
echo "4. View phone Directory"
echo "5.Quit"
read -p "Enter your choice" usr_cmd
clear
case $usr_cmd in
1)echo "ADD NEW CONTACT"
 read -p "Enter Name" name
  echo "Got that!"
  read -p "Enter Number" number
  clear
  echo "New contact info:"
  echo "->Name: $name. ->Number: $number"
  echo "$name : $number" >> phonedir.log
 echo "Saved Successfully";;
2)echo "SEARCH CONTACTS"
 read -p "Enter contact name to search" search_query
 clear
 echo "SEARCH RESULTS:"
 grep -i $search_query phonedir.log 
;;
3)echo "DELETE CONTACT"
read -p "Enter contact name to be Deleted(case-sensitive): " delete_string
sed -i -e "/$delete-string/d" phonedir.log
echo "Delete Successful"
;;
4)echo "Phone Directory"
echo ""
 cat phonedir.log;;
5)break;;
*)echo "INVALID OPTION";;
esac;
read -p "press 5 to quit,Anything else to  Return to main menu" confirm_exit
if [$confirm_exit eq 5]
then break
fi
done

