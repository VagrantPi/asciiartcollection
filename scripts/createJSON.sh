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

cd ${MEDIA_FOLD}
for file in `ls *.txt`;do
	if [ "$header" == "" ]; then
		rm "${script_locate}/${OUT_JSON_FOLD}/${OUT_JSON}"
	fi
	
	mainFileName=`echo ${file} | sed s/\.txt//g`
	echo -n ${header}'{'$mainFileName}'}' >> "${script_locate}/${OUT_JSON_FOLD}/${OUT_JSON}"

	header=","
done
