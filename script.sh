git diff --exit-code
if [ $? == 0 ] ; then
  exit 1
fi
git add swagger.yaml
git commit -m "Update swagger.yaml"

