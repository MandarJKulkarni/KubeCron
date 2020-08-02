# KubeCron
Create a kubernetes cron job to call a Python script

Prerequisites:
  Access to a Google Cloud project and Cloud Shell
  

Steps to follow:

    Create a simple (or any) Python script which you want to call through the Kubernetes cron.
    (It could be a micro-service as well)

    Create dockerfile to create the image containing your Python script.

    Create a Kubernetes cron yaml to call the script at a specified interval

    Run 'kubectl apply -f test_cron.yaml' in the Google Cloud shell on the GCP to which you have access
