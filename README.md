# ASA_Linux_Server
Helper Scripts to get Your Ark: Survival Evolved dedicated Server Running through Docker

## Getting Started

You'll need some prerequisites such as docker with the compose plugin, wget, and tar. 

Once you've got those:

```
#Clone this repository:
git clone https://github.com/chatdargent/ASA_Linux_Server.git
cd ASA_Linux_Server.git
#Run the Setup Script: (This installs the Windows version of the ARK Server, downloads the correct version of Proton, etc)
./setup.sh
#To make a new instance, run the instance creation script:
#./new_instance.sh <InstanceName> <MapName> <Port> <SteamPort> "<Options>"

#For example, the command to set up my server was this:
./new_instance.sh TheIsland TheIsland_WP 7777 27015 "-NoBattlEye -UseDynamicConfig"
#It's important that the options be in quotes or only the first will be taken

#cd <Instance Name>
cd TheIsland

docker compose up -d
#Now your GameUserSettings.ini should be in ./config and you can look at it to see the SessionName/Change it and whatever settings you may like.
```
