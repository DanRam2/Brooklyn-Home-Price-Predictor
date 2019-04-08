gcloud dataproc clusters create ch6cluster --initialization-actions gs://dataproc-initialization-actions/datalab/datalab.sh --scope cloud-platform
export MYRANGE=0.0.0.0/0
gcloud compute firewall-rules create datalab-access   --allow tcp:8080   --source-ranges $MYRANGE   --target-tags master
export MASTERNODE=$(gcloud dataproc clusters describe ch6cluster --format='value(config.masterConfig.instanceNames)')
export MASTERIP=$(gcloud compute instances describe $MASTERNODE --zone $ZONE --format='value(networkInterfaces[0].accessConfigs[0].natIP)')
export $ZONE= us-central1-a
gcloud compute instances add-tags $MASTERNODE --tags master --zone $ZONE
export MASTERIP=$(gcloud compute instances describe $MASTERNODE --zone $ZONE --format='value(networkInterfaces[0].accessConfigs[0].natIP)')
echo http://$MASTERIP:8080