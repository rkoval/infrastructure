# infrastructure

To run the full stack:

```sh
docker-compose pull
docker-compose build # to add local changes
docker-compose up
```

If running locally (or without a proper DNS), you'll need to add entries for all of the `.local` domains found in the [docker-compose.yml](docker-compose.yml) into your hosts files in order to access the sites through nginx.

You can then hit any of the domains in your browser to see the working websites.
