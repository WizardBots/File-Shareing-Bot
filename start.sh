if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/WizarBots/File-Shareing-Bot/File-Shareing-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /File-Shareing-Bot
fi
cd /File-Shareing-Bot
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
