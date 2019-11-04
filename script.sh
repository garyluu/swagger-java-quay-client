git diff --exit-code
if [ $? == 0 ] ; then
  exit 1
fi

