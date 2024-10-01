git clone https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code.git
cd nd082-Azure-Cloud-DevOps-Starter-Code/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn
mv * /home/odl_user/devOpsProject2
cd /home/odl_user/devOpsProject2
rm -rf nd082-Azure-Cloud-DevOps-Starter-Code
az webapp up --name webapphuydhm1 --resource-group Azuredevops --sku B1 --logs --runtime "PYTHON:3.10"
./make_predict_azure_app.sh
az webapp log tail --name webapphuydhm1 --resource-group Azuredevops