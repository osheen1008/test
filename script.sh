set type = %1
echo type
echo "Deploying infrastructure..."
if %type% == "destroy"
(
terraform %type% --force
)
elif %type% -eq "apply" 
(
terraform %type% -auto-approve
)
else
(
terraform %type%
)
terraform output
