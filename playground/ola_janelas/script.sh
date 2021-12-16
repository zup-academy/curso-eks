kubectl apply -f https://s3.us-west-2.amazonaws.com/amazon-eks/manifests/us-east-1/vpc-resource-controller/latest/vpc-resource-controller.yaml

curl -o webhook-create-signed-cert.sh https://s3.us-west-2.amazonaws.com/amazon-eks/manifests/us-east-1/vpc-admission-webhook/latest/webhook-create-signed-cert.sh
curl -o webhook-patch-ca-bundle.sh https://s3.us-west-2.amazonaws.com/amazon-eks/manifests/us-east-1/vpc-admission-webhook/latest/webhook-patch-ca-bundle.sh
curl -o vpc-admission-webhook-deployment.yaml https://s3.us-west-2.amazonaws.com/amazon-eks/manifests/us-east-1/vpc-admission-webhook/latest/vpc-admission-webhook-deployment.yaml

chmod +x webhook-create-signed-cert.sh webhook-patch-ca-bundle.sh

./webhook-create-signed-cert.sh

kubectl get secret -n kube-system vpc-admission-webhook-certs

cat ./vpc-admission-webhook-deployment.yaml | ./webhook-patch-ca-bundle.sh > vpc-admission-webhook.yaml

kubectl apply -f vpc-admission-webhook.yaml

kubectl get clusterrolebinding eks:kube-proxy-windows