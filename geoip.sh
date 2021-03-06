locip=$(ifdata -pa eth0)
ip=$(curl -s http://icanhazip.com/)
whois=$(whois $ip | grep ountry | awk '{print $2}')
est_conn=$(netstat -anlt | egrep 'ESTABLISHED')
lis_conn=$(netstat -anlt | egrep 'LISTEN')
echo  "\e[94m==============================================================================\e[0m"
echo  "\e[94m==============================================================================\e[0m"
echo  "\e[94m==============================================================================\e[0m"
echo  "\e[94m==============================================================================\e[0m\n"
echo  "1.Public  IP=\e[32m $ip                   \e[0m"
echo  "2.Private IP=\e[32m $locip                \e[0m"
echo  "3.Country=\e[32m $whois                   \e[0m\n"
echo  "Established Connections:\n\e[32m$est_conn \e[0m\n"
echo  "Listening Ports:\n\e[32m$lis_conn         \e[0m"
echo  "\e[94m==============================================================================\e[0m"
echo  "\e[94m==============================================================================\e[0m"
echo  "\e[94m==============================================================================\e[0m"
echo  "\e[94m==============================================================================\e[0m"