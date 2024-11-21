powershell -Command "Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0"
echo "your-public-key" >> C:\Users\<TargetUser>\.ssh\authorized_keys
net start sshd
sc config sshd start=auto