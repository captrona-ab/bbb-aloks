# TODO: should be split on server and client side
# # Global configurations file

config = {}

# Default global variables
config.appName = 'BigBlueButton HTML5 Client'
config.bbbServerVersion = '0.9.0'
config.copyrightYear = '2014'
config.dateOfBuild = 'Sept 25, 2014' #TODO
config.defaultWelcomeMessage = 'Välkommen till Aloks!\r\rOm du vill delta i klassrummet med ljud och bild klickar du på ikonerna högst upp i vänster hörn. Om du använder headset får du en bättre upplevelse.\r\r\r'
config.defaultWelcomeMessageFooter = ""

config.maxUsernameLength = 30
config.maxChatLength = 140

## Application configurations
config.app = {}

# server ip
config.app.serverIP = "http://192.168.0.119"
config.app.logOutUrl = "http://192.168.0.119:4000" # TODO temporary

# port for the HTML5 client
config.app.htmlClientPort = "3000"

# Configs for redis
config.redis = {}
config.redis.host = "127.0.0.1"
config.redis.post = "6379"
config.redis.timeout = 5000
config.redis.channels = {}
config.redis.channels.fromBBBApps = "bigbluebutton:from-bbb-apps:*"
config.redis.channels.toBBBApps = {}
config.redis.channels.toBBBApps.pattern = "bigbluebutton:to-bbb-apps:*"
config.redis.channels.toBBBApps.chat = "bigbluebutton:to-bbb-apps:chat"
config.redis.channels.toBBBApps.meeting = "bigbluebutton:to-bbb-apps:meeting"
config.redis.channels.toBBBApps.users = "bigbluebutton:to-bbb-apps:users"
config.redis.channels.toBBBApps.voice = "bigbluebutton:to-bbb-apps:voice"
config.redis.channels.toBBBApps.whiteboard = "bigbluebutton:to-bbb-apps:whiteboard"

# Logging
config.log = {}

if Meteor.isServer
  config.log.path = if process?.env?.NODE_ENV is "production"
    "/var/log/bigbluebutton/bbbnode.log"
  else
    # logs in the directory immediatly before the meteor app
     process.env.PWD + '/../log/development.log'

  # Setting up a logger in Meteor.log
  winston = Winston #Meteor.require 'winston'
  file = config.log.path
  transports = [ new winston.transports.Console(), new winston.transports.File { filename: file } ]

  Meteor.log = new winston.Logger
    transports: transports

Meteor.config = config
