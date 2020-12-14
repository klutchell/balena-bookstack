# balena-bookstack

[bookstack](https://www.bookstackapp.com) stack for balenaCloud

## Requirements

- Raspberry Pi 4 or a similar device supported by BalenaCloud

## Getting Started

You can one-click-deploy this project to balena using the button below:

[![](https://balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/klutchell/balena-bookstack&defaultDeviceType=raspberrypi4-64)

## Manual Deployment

Alternatively, deployment can be carried out by manually creating a [balenaCloud account](https://dashboard.balena-cloud.com) and application, flashing a device, downloading the project and pushing it via either Git or the [balena CLI](https://github.com/balena-io/balena-cli).

### Application Environment Variables

Application envionment variables apply to all services within the application, and can be applied fleet-wide to apply to multiple devices.

|Name|Example|Purpose|
|---|---|---|
|`TZ`|`America/Toronto`|(optional) inform services of the [timezone](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones) in your location|
|`MYSQL_ROOT_PASSWORD`|`********`|password that will be set for the MariaDB root account|
|`APP_URL`|`https://<UUID>.balena-devices.com`|for specifying the url your application will be accessed on (required for correct operation of reverse proxy)|

## Usage

### bookstack

Connect to `http://<device-ip>:80` or enable the `Public device URL` in the dashboard to begin using Bookstack.

The default username is `admin@admin.com` with the password of `password`.

Ensure you change the password and email address for the default username.

<https://www.bookstackapp.com/docs/>

### redis

Redis an in-memory key-value database that can be used to improve the performance of applications via memory caching, where frequently-requested objects are stored in memory for faster retrieval. I'm not a expert beyond setting it up, but some form of memory caching is recommended for a small performance bump in applications like Bookstack and Nextcloud. It is completely optional though, so feel free to remove it from your setup.

<https://www.bookstackapp.com/docs/admin/cache-session-config/>

### duplicati

I use Duplicati on most of my devices as a way to ensure I have offsite backups of the data in case of SD card corruption or other data loss. It also makes it convenient to migrate the data to a new device and memory card if needed.

Connect to `http://<device-ip>:8200` to begin using Duplicati.

<https://duplicati.readthedocs.io/en/latest/>

### mysqldump

The `mysqldump` service will run every hour and take a snapshot of the mysql database.
When Duplicati backs up an `.sqldump` file it is more likely to be recovered from a backup
than an in-use database file.

I don't trust a backup of a database that is currently in use, so sqldump ensures there is no corruption due to open database files. On restoration if the database doesn't immediately work, I can import the sqldump file.

<https://mariadb.com/kb/en/mysqldump/#restoring>

## Contributing

Please open an issue or submit a pull request with any features, fixes, or changes.
