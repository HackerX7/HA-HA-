if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/HackerX7/new-bot.git /new-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /new-bot
fi
cd /new-bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
