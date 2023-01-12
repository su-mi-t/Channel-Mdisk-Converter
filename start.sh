if [ -z $SOURCE_CODE ]
then
  echo "Cloning main Repository"
  git clone https://github.com/su-mi-t/Channel-Mdisk-Converter /Channel-Mdisk-Converter
else
  echo "Cloning Custom Repo from $SOURCE_CODE "
  git clone $SOURCE_CODE /su_mi_t/Channel-Mdisk-Converter
fi
cd /su-mi-t/Channel-Mdisk-Converter
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
