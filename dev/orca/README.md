# ORCA SAST scanner

These are the steps to enable the ORCA SAST scanner

## Step 1:Create a project
* Logon to http://app.orcasecurity.io
* Click AppSec (on the left menu.  Second from the bottom)
* Click “Management”
* The Projects Dialog opens up
* Click “Create New”.

## Step 2:Create API Token
* Logon to http://app.orcasecurity.io
* Click on the Settings
* Goto User & Permissions
* Under User & Permissions – Click API
* Click “Add API Token”  as shown below

---
ADD Details as below
* Name: Curiosity
* Expiration Date:  Choose 1 year from inception
* Role : ShiftLet User
* Scope Access to specific resource: Select AppSec projects → select the project you created in Step 1

Click Add

## Step 3: Add TOKEN to GitHub
* Open https://github.com/harvard-lts/CURIOSity  in a browser
* Click on Settings
* Click on “Secrets & variable”
* Under “Actions”  click “New repository secret”
* Add ORCA_SECURITY_API_TOKEN

Now paste the TOKEN from Step 2 into the value field