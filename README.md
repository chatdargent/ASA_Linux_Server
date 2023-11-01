# ASA_Linux_Server
Helper Scripts to get Your Ark: Survival Ascended dedicated Server Running through Docker

## Getting Started

### Prerequisites:
  - [steamcmd](https://developer.valvesoftware.com/wiki/SteamCMD#Linux)
  - [docker](https://docs.docker.com/engine/) (with [compose plugin](https://docs.docker.com/compose/install/linux/))
  - wget, tar, git (These are probably already on your system but hey)

### Preparation
   - Clone the repo wherever you'd like to store your project: `git clone https://github.com/chatdargent/ASA_Linux_Server.git`
   - Change into the new directory: `cd ASA_Linux_Server.git`
     
### Installation
   - Run the setup script: `./setup.sh` (This downloads proton and the ASA server for windows and puts them in ./proton and ./server, respectively)

### Creating Instances
   - Run the instance creation script: `./new_instance.sh <InstanceName> <MapName> <Port> <SteamPort> "<Options>"`
     
   This will create a new folder at ./InstanceName with a generated docker-compose.yml for you to get started.
   
   Be careful to make sure you bump port numbers by two for each instance if you want to run multiple instances, and make sure you include all your launch options at the end in double quotes or the script will drop everything after the first space.
   Here's an example command: `./new_instance.sh TheIsland TheIsland_WP 7777 27015 "-NoBattlEye -UseDynamicConfig"`

### Startup
   Should be as simple as 
   ```
   cd <Instance Name>
   docker compose up -d
   ```
   If the server started successfully, your GameUserSettings.ini should be in ./config. 
   
   At the bottom you will see your session name which is the name you can search for in the client in order to find your server, and you can change that and any other settings you may wish to change.
   
   If any step in this process didn't work for you, please open an issue. I only have arch to test on, and so it's only been tested on arch.



   Thanks to [https://github.com/scottyhardy](Scotty Hardy) for his awesome docker-wine image which served as the basis for this project. 
