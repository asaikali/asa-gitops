# asa-gitops
Example showing how to do GitOps with Azure Spring Apps Enterprise

# How to layout the repo option 0

In this option the git repo only has a list of apps to deploy to a single
asa-e instance so the structure is 


definition/ <-- terraform that creates the ASA-E instance 
apps/ <-- one subdir per app taht is deployed to the instance with the name of the parent dir
    catalog/ <-- desired state for the catalog app
        definition/ <-- desired state for the app config such as env vars, ... etc. expressed as a terraform
        deployments/ <-- desired state for app versions for each of the apps deploymets
        blue <-- file with the code version to deploy 
        green <-- file with the code version to deploy
        production <-- name of the deployment that should use for prod blue or green
    order/
        definition/
        deployments/
        blue
        green
        production 
    ...
    ...
    ...



# How to layout the repo option 1

ASA service instances must have golbally unique names, across all of azure.
so the `asa` directory has a subdirectory with the desired 
state of each asa serviec instance. for example

```
/asa/
  prod/ <-- shoud have one subdirectory for each asa serviec instance that is considered to be productions 
    demo-asa-us-east2/
        definition/ <-- terraform that creates the ASA-E instance 
        apps/ <-- one subdir per app taht is deployed to the instance with the name of the parent dir
            catalog/ <-- desired state for the catalog app
              definition/ <-- desired state for the app config such as env vars, ... etc. expressed as a terraform
              deployments/ <-- desired state for app versions for each of the apps deploymets
                blue <-- file with the code version to deploy 
                green <-- file with the code version to deploy
                production <-- name of the deployment that should use for prod blue or green
            order/
              definition/
              deployments/
                blue
                green
                production 
            ...
            ...
            ...
  dev/
   my-dem-us-west/
     definition/
     apps/
       catalog/
         definiotn/
         deploymnets/
       order/
         definition/
         deployments
                 
```