# Sentinel Project

Sentinel is a secure system administration toolkit built using Bash scripting.

The project provides:
1-  User authentication2
2-  System monitoring
3-  Backup management
4-  Task management
5 - Uptime monitoring
6 -  Temporary file sharing server

-

# Files

# Main Scripts
-1 sentinel.sh → main menu
-2 auth.sh → login system
-3 monitor.sh → system monitor
-4 backup.sh → backup utility
-5 tasks.sh → tasks manager
-6 uptime.sh → server monitor
-7 fileserver.sh → local file server

-

# Config & Log Files
-1 .sentinel_users → stores users
-2 .watchlist.conf → servers list
-3 backup.log → backup history
-4 uptime.log → uptime logs
-5 fileserver_access.log → file server logs

-

# Setup

Give execute permission:

bash
chmod +x *.sh
example to run this programme:
bash sentinel.sh or ./sentinel.sh

