cs-kubectl(){
  echo "
  [] kubectl config get-contexts
  [] kubectl get pods -n NAMESPACE --context CONTEXT_NAME
  [] kubectl describe deployments -n NAMESPACE --context CONTEXT_NAME
  [] kubectl describe deployment DEPLOYMENT_NAME -n NAMESPACE --context CONTEXT_NAME
  "
}