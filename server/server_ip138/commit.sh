pwd
cd /d/dns/GitDns


# ָ����ʼλ��,notice: �޸�Ϊ�����ĿĿ¼
# ��һ�еĲ�������ã�����������

PATH=/c/Users/Administrator/bin:.:/usr/local/bin:/mingw/bin:/bin:$PATH
echo $PATH
# �����gitbash��ͬ��PATH����,notice: /c/Users/Administrator/bin ���·��������Ҫ����

# �ύ��������ʱ��
export x=`date -d today '+%Y-%m-%e %T'`

# �ύ��Զ�̿�
git commit -a -m "ip have been changed_`echo $x`"
ping -n 5 127.0.0.1 > nul
git push origin dev
exit
