docker-s3-volume
==============

Creates a Docker container that is restored and backed up to a directory on s3. You could use this to run short lived processes that work with and persist data to and from S3.

Usage:

Pass Access Keys and paths as environment variables

```
docker run -it --rm \
  -e AWS_ACCESS_KEY_ID=... \
  -e AWS_SECRET_ACCESS_KEY=... \
  -e VOLUME_PATH=/data \
  -e S3_PATH=s3://<BUCKET>/<PATH> \
  demandbase/docker-s3-volume
```

This pulls down the contents of a directory on S3. If the container is stopped or sent a `USR1` signal, it will backup the modified local contents to S3.
