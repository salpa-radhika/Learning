git commands:

From terminal using homebrew install git -> brew install git 
check if install by checking the version -> git --version

using github create a public repo 
Add ssh keys by generating them locally 
steps:
Generate an SSH Key Pair
Open a new Terminal window
Type ssh-keygen -b 4096 -t rsa 
You will be prompted to enter a filename. By default, your keys will be saved as id_rsa and id_rsa.pub. Simply press Enter to confirm the default - there is no need to change this unless you have multiple keys! (Note: if you would like to change the default filename, you'll need to include the complete file path)
When prompted, enter a passphrase.
This will created a hidden directory called .ssh that contains both your public (id_rsa.pub) and private (id_rsa.) key files. 
View your public key
In the same Terminal window, type cat .ssh/id_rsa.pub. This will print your public key. (Note: if you are not using the default key filename, please substitute your public key name in place of id_rsa.pub).

add them in your github


Now inyour local create a directory for performing git commands


mkdir TestRepo

Initiate git -> git init
set user name and email locally or globally ->git config --local/--global user.name Radhika 
					      git config --local/--global user.email salparadhika1997@gmail.com
remove config using -> git config --remove-section user



add some files -> touch file1.txt
		  touch file2.py
Add some context to files -> echo Hello World > file1.txt 
			     echo Hello World >file2.py
add these files to git -> git add . 
add them individually -> git add file1.txt & git add file2.py
check logs by using -> git logs --pretty=oneline (displays all the changes made)
commit the changes -> git commit -m "message for commit"
Add repo to your remote location -> git remote add origin "http/ssh link from github"
push changes -> git push origin main

check branch -> git branch
create new branch -> git checkout <new_branch>
to make merges use git merge <branch_name>
check status -> git status
To see changes in local directory and staged -> git diff
 		local directory to main repo -> git diff head
		stage to main repo -> git diff --staged
to merge files along with all the commits -> git rebase <branch_name>

diff with merge and rebase in git commands is merge makes new commit with all the commits made in local branch 
rebase  adds all the commits made in th local branch to main branch. 
reset commits made -> git reset --soft/--hard <commit_id>
reset one latest commit -> git reset --hard HEAD~1

revert few lines or few commits -> git revert --hard <commit_id>
diff with reset and revert
reset commands remove all the commits made after commit id but revert only removes changes made in mentioned commit id

git restore
If we want to restore the file that got deleted or moved to staging we can use git restore <file_name>
if we want to restore the file from staged to directory then we can use git restore --staged <file_name>

git mv
for renaming the file we can use git mv <file_name> <new_file_name>



git stores data in the repo in key value i.e., SHA1
to check value use git cat-file alphanumeric_value -p
