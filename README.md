This is a simple bash script and unit service/timer file that will automatically detect the presence of a new PalWorld config file, load it, and restart the service.  This does make a few assumptions:

1. You're running the steam app/Palworld server on Ubuntu 22.04 LTS or newer
2. You are running it as a unit service named "palworld".
3. Your primary username is "palworld".

If any of these deviate from your install, you may need to update the bash script to accomodate.  This allows a user to simply drop a config file into the home directory and everything else is automated around the installation process.
