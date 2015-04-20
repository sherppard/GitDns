#coding=utf-8
import urllib  
import httplib2  
import re
  
http = httplib2.Http()  
  
url = 'http://192.168.99.1/cgi-bin/luci'     
body = {'bd_web':'1','password': 'gzvtccisco1', 'username': 'root'}
headers = {'Content-type': 'application/x-www-form-urlencoded'}  
response, content = http.request(url, 'POST', headers=headers, body=urllib.urlencode(body))  
cook = response['set-cookie'].split(';')[0]


stok = content.split(';')[50].split('/')[0]  #stok是百度路由自动生成的一段访问API的数字

print '_'*80

headers = {'Cookie':cook,'Host':'192.168.99.1','DNT':'0'}   ###将获得cookie设置到请求头中，以备下次请求使用  

url = 'http://192.168.99.1/cgi-bin/luci/;'+stok+'/admin/private/get_system_status?'
response, contents = http.request(url, 'GET', headers=headers)  ##本次请求就不用带用户名，密码了  

print contents   # 注意contents 是字符串格式的

print '-'*50

info = contents.split(',')

for i in range(0,len(info)):
	if 'wan_ip' in info[i]:
		ip_info = info[i]

p = re.compile('\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}')

ipaddr = re.findall(p,ip_info,flags=0)

print ipaddr

#print contents.split(':')[6]


