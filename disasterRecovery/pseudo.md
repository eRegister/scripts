* create variables to make the script more neat
  * variable for holding site name
  * date variable
  * folder id variable

* create full database backup in container - append facility name and date to filename
* put in it backups/
* copy backup file from backups/ to host OS. Put it in localbackup/
* copy backup file from localbackup/ and put it in Google Drive folder facilityname/
* exit




1. The idea I'm proposing is to push all of our backups to Google drive. They'll be safe.
2. We'll be using Prasmussen's gdrive CLI app. https://github.com/prasmussen/gdrive
3. One good inspiring guide on how the app interacts with Google Drive's API can be found on
    * http://www.linuxandubuntu.com/home/google-drive-cli-client-for-linux#
    * https://www.howtoforge.com/tutorial/how-to-access-google-drive-from-linux-gdrive/
4. We're also going to have to set cron jobs for the backups to run on a weekly basis