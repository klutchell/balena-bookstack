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
|`BS_URL`|`https://<UUID>.balena-devices.com`| (optional) set to the same value as APP_URL in order to enable scheduled book exports|
|`BS_TOKEN_ID`|`abc123`|(optional) set to be your API token_id in order to enable scheduled book exports|
|`BS_TOKEN_SECRET`|`123abc`|(optional) set to be your API token_secret in order to enable scheduled book exports|

## Usage

### bookstack

Connect to `http://<device-ip>:80` or enable the `Public device URL` in the dashboard to begin using Bookstack.

The default username is `admin@admin.com` with the password of `password`.

Ensure you change the password and email address for the default username.

- <https://www.bookstackapp.com/docs/>
- <https://docs.linuxserver.io/images/docker-bookstack#application-setup>


### duplicati

Connect to `http://<device-ip>:8200` to begin using duplicati.

- <https://duplicati.readthedocs.io/en/latest/>
- <https://docs.linuxserver.io/images/docker-duplicati#application-setup>

## Contributing

Please open an issue or submit a pull request with any features, fixes, or changes.
