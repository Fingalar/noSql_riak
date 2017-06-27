#!/bin/bash
IFS=","
i=0
while read f1 f2 f3 f4 f5 f6
do
	f2=`eval printf $f2`
	f3=`eval printf $f3`
	f4=`eval printf $f4`
	f5=`eval printf $f5`
	f6=`eval printf $f6`
        curl -X PUT http://localhost:8098/riak/employees/$f1 -H 'cache-control: no-cache' -H 'content-type: application/json' -d "
{
	\"birth_date\": \"${f2}\",
       	\"first_name\": \"${f3}\",
	\"last_name\": \"${f4}\",
	\"hire_date\": \"${f6}\",
	\"gender\": \"${f5}\"
}"
	echo $i
	i=$((i+1))
done < employees.csv
~                                                                                                                                                                                                                   
~                                                                                                                     
