# balena-bookstack

[BookStack](https://www.bookstackapp.com) is a simple and free, self-hosted, easy-to-use wiki platform for organising and storing information.

## Getting Started

You can one-click-deploy this project to balena using the button below:

[![deploy with balena](https://balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/klutchell/balena-bookstack)

## Manual Deployment

Alternatively, deployment can be carried out by manually creating a [balenaCloud account](https://dashboard.balena-cloud.com) and application, flashing a device, downloading the project, and pushing it via he [balena CLI](https://github.com/balena-io/balena-cli).

### Application Environment Variables

Application envionment variables apply to all services within the application, and can be applied fleet-wide to apply to multiple devices.

|Name|Example|Purpose|
|---|---|---|
|`TZ`|`America/Toronto`|(optional) inform services of the [timezone](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones) in your location|
|`APP_URL`|`https://<UUID>.balena-devices.com`|for specifying the url your application will be accessed on (required for correct operation of reverse proxy)|

## Usage

Once your device joins the fleet you'll need to allow some time for it to download the application and create the app database.

When it's done you should be able to access the access the app at <http://boostack.local>.

The default username is `admin@admin.com` with the password of `password`.

Additional usage instructions for this image can be found here: <https://docs.linuxserver.io/images/docker-bookstack>.

### Extras

Works well with the [duplicati block](https://github.com/klutchell/balenablocks-duplicati) to make encrypted snapshots offsite!

Add the following services and volumes to the existing docker-compose file in this project.

```yaml
services:
  duplicati:
    image: linuxserver/duplicati:latest
    environment:
      PUID: "0"
      PGID: "0"
      CLI_ARGS: --webservice-interface=any
    ports:
      - 8200:8200/tcp
    volumes:
      - duplicati:/config
      - bookstack:/source/bookstack
      - mariadb:/source/mariadb

volumes:
  duplicati:
```

## Contributing

Please open an issue or submit a pull request with any features, fixes, or changes.
