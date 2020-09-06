<h1>What is this?</h1>

This is a script designed to make backing up a **Nextcloud Snap** to an external storage much easier.

<h2>What storages work best with this script?</h2>

This script is currently being designed to make it easy to backup to:

<ol>
<li>Other directories on the server</li>
<li>External USB Drives mounted to the computer</li>
<li>Just about any storage attatched to the computer via fstab!</li>
</ol>

<h3>What are the core features?</h3>

The core, fundamental functions of this script is to...

<ol>
<li>Create a backup user on the system</li>
<li>Set up the user to with a Backup folder and a log folder</li>
<li>Configure the backup user with proper sudo permissions</li>
<li>Configure a setup for cron to make the backup user run a backup script at a specified time and/or date</li>
<li>Run the backup script, which involves...</li>
<ol>
<li>Running the Nexcloud snap built in "nextcloud.export" command which...</li>
<ol>
<li>Puts the Instance into maintainence mode</li>
<li>Starts backing up all user data, apps, configuration, and database</li>
<li>Takes the instance out of maintainence mode</li>
</ol>
</ol>
<li>Compressing the newly created backup into a tar file</li>
<li>Moving the tar file into the specified directory</li>
<li>Deleting the uncompressed backup and any old backups after a specified interval</li>
<li>Using cron to repeat the backup script when specified</li>
<h4>Whats currently implemented?</h4>

  Currently, this script has...
  <ul>
  <li>Nothing</li>
  </ul>
  <br>
  What I'm wanting to add are...
  
  <ul>
  <li>Easy setup installer</li>
  <li>implementing config files for fast deployment</li>
  <li>Easy configuration for storing NAS, SMB, SFTP</li>
  </ul>
