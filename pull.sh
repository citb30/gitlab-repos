repos=(http://root:password@104.196.127.109/engineers/ansible.git)
for repo in ${repo[*]}; do 
  DIR=$(echo $repo | awk -F / '{print $NF}'|sed -e '/.git//' )
  rm -rf $DIR
  git clone $repo
  rm -rf $DIR/.git
done

git add -A ; git commit -m ss; git push origin master
