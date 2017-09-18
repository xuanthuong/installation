1. Install nodejs
https://nodejs.org/en/download/package-manager/
`curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -`
`[sudo] apt-get install -y nodejs`

`[sudo] apt-get install -y build-essential`

2. Install pm2
`npm install pm2 -g`

3. Start
`source /home/thuong/.PythonVEnv/Python3/.golfgame/bin/activate && pm2 start $GOLFGAME_HOME/config.json`

4. Check logging
`pm2 logs GM-API`
`pm2 logs`