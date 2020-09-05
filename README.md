# balena-bookstack

[bookstack](https://www.bookstackapp.com) stack for balenaCloud

## Requirements

- Raspberry Pi 4 or a similar x64 device supported by BalenaCloud

## Getting Started

You can one-click-deploy this project to balena using the button below:

[![](https://balena.io/deploy.png)](https://dashboard.balena-cloud.com/deploy)

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

Connect to `http://<device-ip>:80` to begin using bookstack.

### duplicati

Connect to `http://<device-ip>:8200` to begin using duplicati.

## Contributing

Please open an issue or submit a pull request with any features, fixes, or changes.

## Author

Kyle Harding <https://klutchell.dev>

[![](https://cdn.buymeacoffee.com/buttons/default-orange.png)](https://www.buymeacoffee.com/klutchell)

## References

- <https://docs.linuxserver.io/images/docker-bookstack>
- <https://www.bookstackapp.com/docs/admin/backup-restore/#database>
- <https://www.bookstackapp.com/docs/admin/cache-session-config/>

## License

[MIT License](./LICENSE)
