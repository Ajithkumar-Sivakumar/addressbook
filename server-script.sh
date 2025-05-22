sudo yum install java-17-amazon-corretto-devel -y
sudo yum install git -y
sudo yum install maven -y

if [ -d "addressbook" ]
then
  echo "repo is cloned and exists"
  cd /home/ec2-user/addressbook
  git pull origin full_pipe
else
  git clone https://github.com/Ajithkumar-Sivakumar/addressbook.git
fi

cd /home/ec2-user/addressbook
mvn package
