
cs-python() {
  echo "
  [pipenv build] pipenv --python 3.7
  [pipenv build] pipenv --python 3.8
  [pipenv build] pipenv shell
  [pipenv build] pipenv install
  "
}

cs-kubectl(){
  echo "
  [] kubectl config get-contexts
  [] kubectl get pods -n NAMESPACE --context CONTEXT_NAME
  [] kubectl describe deployments -n NAMESPACE --context CONTEXT_NAME
  [] kubectl describe deployment DEPLOYMENT_NAME -n NAMESPACE --context CONTEXT_NAME
  "
}