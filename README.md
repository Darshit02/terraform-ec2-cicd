# Terraform + GitHub Actions CICD Pipeline

##  What it does:
- Provisions an EC2 instance via Terraform.
- Sets up SSH security group and deployer key.
- Uses GitHub Actions workflow to SSH into the instance on code push.
- Runs a deployment script via SSH.

##  Setup:
1. Run `terraform init`
2. Run `terraform apply`
3. Note the `public_ip` output.
4. In your GitHub repo:
   - Add `SSH_PRIVATE_KEY` secret (your EC2 deploy key)
   - Add `SERVER_IP` secret (from Terraform output)
5. Push code to `main` — auto deployment happens.

##  Structure:
- `main.tf` → AWS infra setup.
- `github/workflow.yaml` → CI/CD definition.
- `scripts/deploy.sh` → Server-side deployment commands.

##  Notes:
- Replace AMI ID with latest Ubuntu AMI for your region.
- Update app deployment commands in `deploy.sh`.
- also connect your AWSd account with AWS CLI to make API calls 

##  Done!
