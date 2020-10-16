# "git commit -a -m "message here" & git push" is better
# this serves the purpose for quick and dirty changes
echo "Enter your message"
read message
git add .
git commit -m"${message}"
if [ -n "$(git status - porcelain)" ];
then
 echo "head is clean"
else
 git status
 echo "Pushing data to remote server!!!"
 git push -u origin master
fi