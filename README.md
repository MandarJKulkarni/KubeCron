# KubeCron
Create a kubernetes cron job to call a Python script

Prerequisites:
  Access to a Google Cloud project and Cloud Shell
  

Steps to follow:

    Create a simple (or any) Python script which you want to call through the Kubernetes cron.
    (It could be a micro-service as well)

    Create dockerfile to create the image containing your Python script.
    
    Build the docker image and push it to Google container registry
       docker build -t test-cron .
       docker tag test-cron gcr.io/gcp-project/test-cron
       docker push gcr.io/gcp-project/test-cron

    Create a Kubernetes cron yaml to call the script at a specified interval

    Run 'kubectl apply -f test_cron.yaml' in the Google Cloud shell on the GCP to which you have access
            
    To delete the cron you can run
       'kubectl delete cronjob test-cron'
