echo "applying"
terraform init
if [$1 == 'destroy']
then
echo "About to Destroy"
terraform $1 -force
elif [$1 == 'apply']
then
echo "About to apply"
terraform $1 -auto-approve
else
terraform $1
fi
