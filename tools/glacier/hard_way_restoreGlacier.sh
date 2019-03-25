aws s3api restore-object --bucket ga-odc-eros-archive-west --key archive/til/003003 --restore-request '{"Days":2,"GlacierJobParameters":{"Tier":"Standard"}}'
