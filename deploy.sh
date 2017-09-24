#!/usr/bin/env bash
# Script for cf api, cf auth and cf target commands.

# CF_API
CF_API="https://api.cf.eu10.hana.ondemand.com"
echo "Cloudfoundry API is the following ${CF_API}"

# CF_USERNAME
CF_USERNAME="No name"

# MANIFEST FILE NAME
MANIFEST_FILENAME="manifest.yml"
echo "The Manifest filename is the following ${MANIFEST_FILENAME}"

# CF_ORG
CF_ORG=""
echo ${CF_ORG}
# CF_SPACE
CF_SPACE="dev"
echo ${CF_SPACE}


# Set default API target
cf api ${CF_API}
# cf auth ${CF_USERNAME}
cf target ${CF_ORG} ${CF_SPACE}
cf login
cf push
# go get github.com/concourse/autopilot
# cf install-plugin ${GOPATH}/bin/autopilot
# cf zero-downtime-push ${APP_NAME} -f ${MANIFEST_FILENAME}
