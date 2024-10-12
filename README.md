# gtac-updater
This script is made for easy and fast update/downgrade of GTA:Connected Linux server using official GTAC download repo. When ```gtacver``` export is not set, the script will grab the most recent version automatically.

## First run:
1. Download the script and put it into your server directory.
2. Set chmod 755 update.sh
3. (optional) Set destinated server version:
```export gtacver=<place version number here>```
Example:
```export gtacver=1.5.11```
4. Run ```./update.sh```
5. Viola!

## Update/downgrade:
1. Set desired version with ```export gtacver=<place version number>```
2. Run ```./update.sh```
