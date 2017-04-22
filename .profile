# Add ssh identities to the ssh agent using any stored passphrase
# in the keychain if they have not already been added.
ssh-add -l &> /dev/null
if [ $? -eq 1 ]
then
    ssh-add -A
fi
