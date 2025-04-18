set -e

cd /var/tmp/flexdeploy/flexsalesdemo/work/94337/421221/temp
./node_modules/.bin/grunt vb-process-local --url:ce=https://devinstance4wd8us2-wd4devcs8us2.uscom-central-1.oraclecloud.com/profile/devinstance4wd8us2-wd4devcs8us2/s/devinstance4wd8us2-wd4devcs8us2_compcatalog_3461/compcatalog/0.2.0 --username:ce=comp.catalog --password:ce=$OVBDEV_FDOVBACCT_COMPONENT_EXCHANGE_PASSWORD --mode=default --fa-indexHtml-resolveVariables=true --enableTelemetry=false 
./node_modules/.bin/grunt vb-package --skip-optimize=true 
./node_modules/.bin/grunt vb-archive  
