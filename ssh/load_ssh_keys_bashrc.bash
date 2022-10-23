echo "Loading ssh keys"
echo "Enter account number: 1 (github), 2(bitbucket)"
read ACCOUNT
eval $(ssh-agent)
if [ "$ACCOUNT" == 1 ]
then 
    echo "Github" 
    ssh-add /root/.ssh/github/id_rsa
else 
    if [ "$ACCOUNT" == 2 ]
    then 
        echo "Bitbucket"
        ssh-add /root/.ssh/bitbucket/id_rsa
    fi
fi