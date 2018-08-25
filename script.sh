echo "applying"
terraform init
if [$1 -eq 'destroy']
then
echo "About to Destroy"
terraform $1 -force
elif [$1 -eq 'apply']
then
echo "About to apply"
terraform $1 -auto-approve
else
echo "About to Plan..............................................................."
terraform plan
fi
