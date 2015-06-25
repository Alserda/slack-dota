# slack-dota

## Installation

### Steam

Go to [this](http://steamcommunity.com/dev/apikey) link and generate a new Web API key (make sure you're logged in).

Copy the key and add this to the 'key' key in `config/steam.yml`


### Slack

It's possible to generate a token for your team's Slack-channel by going to [this](https://api.slack.com/web) link. Scroll down and press 'Create Token' at the correct team. Copy the token. In `config/slack.yml` add the token to the 'token' key.



You have to enable an incoming webhook to be able to actually post the messages in a Slack channel. Go to [this](https://peperzaken.slack.com/services/new) link and add a new 'Incoming WebHook' and then select a channel that you want to post the messages in. Copy the last part of the Webhook URL (https://hooks.slack.com/services/**this/part**) and add this to the 'webhook' key in `config/slack.yml`

### Players

In `config/players.yml` add the name of the player that you wish the games of and add the players dotabuff ID to the 'dota_id' key. This ID can be found by checking the URL of Dotabuff (e.g. http://www.dotabuff.com/players/**113802899**).

