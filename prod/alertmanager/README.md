
#TODO : Document updating AM (AlertManager) config

## Pre-req:
* Access to AWS env
* amtool from the AM repo
* 

## Steps to follow
1. Checkout this repo
2. Traverse to the environment/alertmanager folder.
3. Change to the cattle-monitoring-system NS
* Example : kubens cattle-monitoring-system
4. Edit the alertmanager as required.
* eg: vi alertmanager.yaml

5. Verify contents are correct
```dotenv
    amtool check-config alertmanager.yaml
```

This will verify the contents are correct.

6. Next, encode the alertmanager.yaml
```dotenv
    cat alertmanager.yaml | base64 | tr -d '\n' > encoded_alertmanager.yaml
```
7. Change context to the 'cattle-monitoring-system'
8. Next set the ENCODE variable
```dotenv
    ENCODED_CONFIG=$(cat encoded_alertmanager.yaml)
```

9. Next, patch the new files as follows
```dotenv
    kubectl patch secret alertmanager-rancher-monitoring-alertmanager -n cattle-monitoring-system -p="{\"data\":{\"alertmanager.yaml\":\"$ENCODED_CONFIG\"}}"
```

NOTE:  I usually delete the alertmanager and prometheus pods.