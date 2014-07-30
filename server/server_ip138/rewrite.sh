PublicIP=`wget -q "http://20140507.ip138.com/ic.asp" -O - | grep '[.*?]' | cut -d[ -f2 | cut -d] -f1`
# 提取出当前的ip地址

# 重新提取ip地址
refetchIP(){
	PublicIP=`wget -q "http://20140507.ip138.com/ic.asp" -O - | grep '[.*?]' | cut -d[ -f2 | cut -d] -f1`
	checkIP
}

# 判断wget是否提取到ip地址
checkIP(){
	if [ -z $PublicIP ]; then
		refetchIP
	fi
}

checkIP

# 提取出hosts文件的ip地址
beforeIP=`cat ../../hosts | grep sherpper | cut -d' ' -f1`

# 用read进行sh脚本的调试 
# 在hosts文件下,进行ip地址替换操作
sed -i "/sherpper/s/`echo $beforeIP`/`echo $PublicIP`/" ../../hosts  # notice: the double quotes
exit