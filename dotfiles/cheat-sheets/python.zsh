
cs-python() {
  echo "
  [pipenv build] pipenv --python 3.7
  [pipenv build] pipenv --python 3.8
  [pipenv build] pipenv shell
  [pipenv build] pipenv install
  "
}