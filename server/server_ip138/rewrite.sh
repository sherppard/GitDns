PublicIP=`wget -q "http://20140507.ip138.com/ic.asp" -O - | grep '[.*?]' | cut -d[ -f2 | cut -d] -f1`
# ��ȡ����ǰ��ip��ַ

# ������ȡip��ַ
refetchIP(){
	PublicIP=`wget -q "http://20140507.ip138.com/ic.asp" -O - | grep '[.*?]' | cut -d[ -f2 | cut -d] -f1`
	checkIP
}

# �ж�wget�Ƿ���ȡ��ip��ַ
checkIP(){
	if [ -z $PublicIP ]; then
		refetchIP
	fi
}

checkIP

# ��ȡ��hosts�ļ���ip��ַ
beforeIP=`cat ../../hosts | grep sherpper | cut -d' ' -f1`

# ��read����sh�ű��ĵ��� 
# ��hosts�ļ���,����ip��ַ�滻����
sed -i "/sherpper/s/`echo $beforeIP`/`echo $PublicIP`/" ../../hosts  # notice: the double quotes
exit