# total-rp
A QB-Core Based FiveM Server

1. https://github.com/qbcore-framework
2. 


# Admin Commands
1. /admincar [id] - while sitting in car, gives car ownership to specified [id] - Admin Only


# Starting up local
### Pre-requisites
1. Download and install Maria DB (Current Version:10.6.4) [https://mariadb.org/download/] <br>
1a. Install a GUI for the DB [https://www.heidisql.com/] <br>
2. Download and extract server artifacts (Current Version: 4394) [https://runtime.fivem.net/artifacts/fivem/build_server_windows/master/] <br>
    2a. Create another folder called <b>txData</b> create a BAT file with the following content: <br>
     >@echo off E:/FXServer/server//FXServer.exe +set serverProfile "default" pause <br>

    2b. Within <b>txData</b> folder make another folder named <b>default</b> <br>
    2c. Within the <b>default</b> created a config.json <br>
    2d. config.json contents that need updating: <LOCATION_OF_THE_TOTALRP_FILES> and <LOCATION_OF_THE_TOTALRP_SERVER_FILE> <br>
    >`{
  "global": {
    "serverName": "TestServer",
    "language": "en"
  },
  "logger": {},
  "monitor": {
    "restarterSchedule": [],
    "restarterScheduleWarnings": [
      30,
      15,
      10,
      5,
      4,
      3,
      2,
      1
    ]
  },
  "statsCollector": {},
  "playerController": {
    "onJoinCheckBan": true,
    "onJoinCheckWhitelist": false,
    "minSessionTime": 15,
    "whitelistRejectionMessage": "You are not yet whitelisted in this server.\nPlease join http://discord.gg/example.\nYour Request ID: <id>",
    "wipePendingWLOnStart": true
  },
  "authenticator": {},
  "webServer": {},
  "discordBot": {
    "enabled": false,
    "prefix": "/",
    "statusMessage": "**IP:** `change-me:<port>`\n**Players:** <players>\n**Uptime:** <uptime>"
  },
  "fxRunner": {
    "autostart": true,
    "serverDataPath": "<LOCATION_OF_THE_TOTALRP_FILES>",
    "cfgPath": "<LOCATION_OF_THE_TOTALRP_SERVER_FILE>"
  }
}`

3. Pull down the total_rp code from git

### Setting up the Database
1. Create new DB in heidisql <br>
    1a. Copy and run the ```db-copy.sql``` to load in tables

### 
3. Update server.cfg for the following: <br>
3a. ```endpoint_add_tcp``` <LOCALENDPOINT"> (Usually 0.0.0.0:30120) <br>
3b. ```endpoint_add_udp``` <LOCALENDPOINT"> (Usually 0.0.0.0:30120) <br>
3c. ```set mysql_connection_string``` <"LOCAL DB CONNECTION"> <br>
3c. ```sv_licenseKey``` <"Google how to create a license key from FiveM"> <br>
 
4. Run the BAT file created before and it should start up
