## The image with vertica-client

### Using:

#### Build:
docker build --pull -t vertica-client .

#### Run:
docker run --rm vertica-client -h$VERTICA_HOST -U$ERTICA_USER -w$ERTICA_PASS [$DBNAME]  -c"$QUERY"

or interactive use
docker run -it --rm vertica-client -h$VERTICA_HOST -U$ERTICA_USER -w$ERTICA_PASS [$DBNAME]