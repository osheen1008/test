echo "applying"
terraform init
if [$1 == 'destroy']
then
terraform $1 -force
elif [$1 == 'apply']
then
terraform $1 -auto-approve
else
terraform $1
fi
