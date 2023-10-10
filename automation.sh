echo "
Welcome to Automated Personal Record Management System
"
echo "Choose an Option From Menu Below:"
echo "*********************************"
echo "
1. Add new file to Notes Folder
2. Remove file from Notes folder
3. Rename file from Notes folder
4. Change file permission (rwx) from Notes folder
5. Quit
"
echo "Enter choice:"
read user_choice

current_path="Personal_Record_System/Notes/"
if [ $user_choice -eq 1 ]

then
        cd $current_path
        echo "You have chosen to add new file to Notes folder."

        echo "Enter file name:"
        read file_name
        touch $file_name
        echo "$file_name Created successfully"

elif [ $user_choice -eq 2 ]

then
	cd $current_path

        echo "You have chosen to remove file from Notes folder."

        echo "Enter file name:"

        read file_name

        rm $file_name

        echo "$file_name deleted successfully"

elif [ $user_choice -eq 3 ]

then

        cd $current_path

        echo "You have chosen to rename file from Notes folder."

        echo "Enter file names[old filename AND new file name]:"

        read old_file_name new_file_name

         mv $old_file_name $new_file_name

        echo "$old_file_name renamed to $new_file_name successfully"

elif [ $user_choice -eq 4 ]

then
        cd $current_path

        echo "You have chosen to change file permission from Notes folder."
        echo "Enter file name and new permission:[filename filepermission]"

        read file_name file_permission

        chmod $file_permission $file_name

        echo "$file_name permission changed to $file_permission successfully"

elif [ $user_choice -eq 5 ]

then
        echo "Exiting..... Thank you!"
else
        echo "Invalid choice. Exiting...."
fi

