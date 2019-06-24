jsonobject='{  "hello": "world"    }'

value=jq '.' $jsonobject
echo $value