cs-kubectl(){
  echo "
  [connections projects] kubectl config get-contexts
  [pods services] kubectl get pods -n NAMESPACE --context CONTEXT_NAME
  [pods services all-namespaces] kubectl get pods --all-namespaces
  [deployed running services] kubectl describe deployments -n NAMESPACE --context CONTEXT_NAME
  [get deployment details] kubectl describe deployment DEPLOYMENT_NAME -n NAMESPACE --context CONTEXT_NAME
  "
}