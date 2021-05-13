# balena-bookstack

[BookStack](https://www.bookstackapp.com) is a simple and free, self-hosted, easy-to-use wiki platform for organising and storing information.

## Getting Started

You can one-click-deploy this project to balena using the button below:

[![](https://balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/klutchell/balena-bookstack)

## Manual Deployment

Alternatively, deployment can be carried out by manually creating a [balenaCloud account](https://dashboard.balena-cloud.com) and application, flashing a device, downloading the project and pushing it via either Git or the [balena CLI](https://github.com/balena-io/balena-cli).

### Application Environment Variables

Application envionment variables apply to all services within the application, and can be applied fleet-wide to apply to multiple devices.

|Name|Example|Purpose|
|---|---|---|
|`TZ`|`America/Toronto`|(optional) inform services of the [timezone](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones) in your location|
|`APP_URL`|`https://<UUID>.balena-devices.com`|for specifying the url your application will be accessed on (required for correct operation of reverse proxy)|

## Usage

### bookstack

Once your device joins the fleet you'll need to allow some time for it to download the application and create the app database.

When it's done you should be able to access the access the app at http://boostack.local. The default username is `admin@admin.com` with the password of `password`.

Documentation for BookStack can be found at https://www.bookstackapp.com/docs/

### redis

Redis an in-memory key-value database that can be used to improve the performance of applications via memory caching, where frequently-requested objects are stored in memory for faster retrieval. I'm not a expert beyond setting it up, but some form of memory caching is recommended for a small performance bump in applications like BookStack and Nextcloud. It is completely optional though, so feel free to remove it from your setup.

<https://www.bookstackapp.com/docs/admin/cache-session-config/>

## Contributing

Please open an issue or submit a pull request with any features, fixes, or changes.
