#!/bin/sh

dir=$(dirname $0)
. $dir/tools/config.prop

. $dir/tls/run.sh
echo "ldapsearch -x -h $certCN -b dc=example,dc=com -ZZ"
ldapsearch -x -h $certCN -b dc=example,dc=com -ZZ

. $dir/tls/end.sh
