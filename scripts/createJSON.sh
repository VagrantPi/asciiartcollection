#!/bin/sh
## �H�U���|���O�۹��Scipt�� ** �u�@�ؿ��� **

# �]�wtxt�Ppng�s����|
MEDIA_FOLD="../media"
# �]�wJSON�ɦs�񪺸��|
OUT_JSON_FOLD="../json/"
# ��X���]�t�D�C��JSON�ɦW
OUT_JSON="list.json"

header="";
script_locate="`pwd`";

json_FULLPATH="${script_locate}/${OUT_JSON_FOLD}/${OUT_JSON}"


cd ${MEDIA_FOLD}
for file in `ls *.txt`;do
	if [ "$header" == "" ]; then
		rm "${json_FULLPATH}"
		echo -n "[" >> "${json_FULLPATH}"
	fi
	
	mainFileName=`echo ${file} | sed s/\.txt//g`
	echo -n ${header}'"'${mainFileName}'"' >> "${json_FULLPATH}"

	header=","
done

echo -n "]" >> "${json_FULLPATH}"
