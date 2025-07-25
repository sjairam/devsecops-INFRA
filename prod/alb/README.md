
#TODO : Write up importing ALB

## Pre-req:  
* TF 1.8.x
* Access to AWS env
* listALB.sh

## Steps to follow
1. Login to AWS environment
2. Within the 'alb' folder create the ALB you wish to import.
* For example: Under 'qa/alb' we create 'jobmon' 
3. Copy the default.tf from 'qa/alb'  into the created sub folder
* eg: cp default.tf jobmon/main.tf
4. Traverse to the jobmon folder & Execute terraform init. 
* terraform init

5. Get the ALB ARN:  
* Execute listALB.sh
Tip:  You may grep your requested ARN as some env are quite large
* Example:
  ```
  listALB.sh | grep -i jobmon
  ```
  
6. Execute first import command
* Example: terraform import aws_lb.example << ALB ARN>>
  ```
  terraform import aws_lb.example arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/jobmon-qa/71c9e6f1c54882a4
  ```

* You should see an output like this.
    ```
    Import successful!

    The resources that were imported are shown above. These resources are now in
    your Terraform state and will henceforth be managed by Terraform.
    ```

Now assuming the ALB has a listener or listeners, we need to capture these details.
7. With the ALB ARN, describe the LISTENERS
   ```
   aws elbv2 describe-listeners --load-balancer-arn << ALB ARN >>
   ```
   NOTE:  This in turn will give you a listener ARN.


8. Execute your second import command 
* Example  terraform import aws_lb_listener.imported_listener << Listener ARN>>
  ```
  terraform import aws_lb_listener.imported_listener arn:aws:elasticloadbalancing:us-east-1:847760228496:listener/app/jobmon-qa/71c9e6f1c54882a4/9ca619cf7ef9e876
  ```
  
9. Most ALB will have a Tg (Target group) linked to the Listener
We will need this as well.
* Example: aws elbv2 describe-target-groups --load-balancer-arn << ALB ARN >>
  ```
    aws elbv2 describe-target-groups --load-balancer-arn arn:aws:elasticloadbalancing:us-east-1:847760228496:loadbalancer/app/jobmon-qa/71c9e6f1c54882a4
  ```
  
This give you the TG ARN

10. With the TG ARN, execute your third import command
* Example: terraform import aws_lb_target_group.imported_tg << TG ARN >>
  ```
    terraform import aws_lb_target_group.imported_tg arn:aws:elasticloadbalancing:us-east-1:847760228496:targetgroup/jobmon-qa-https/767553567aa07b7c
  ```
  
11. Finally.  The config is in the statefile.
So from the terminal type:  terraform show.   
``` 
   terraform  show 
```

Copy the contents to the 'main.tf'

12. Save config and check in