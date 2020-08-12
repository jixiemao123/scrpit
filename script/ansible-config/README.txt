---------------------：版本说明
ansible 2.0.1.0
CentOS 6.5

更新/etc/hosts
ansible-playbook -i ./valueq_tw/inventory_web-php.py ./valueq_tw/web_hosts/update_hosts.yml

更新nginx配置文件
ansible-playbook -i valueq_tw/inventory_web-php.py ./valueq_tw/web_nginx/update_conf.yml --limit 128.14.237.57
ansible-playbook -i valueq_tw/inventory_web-php.py ./valueq_tw/web_nginx/update_conf.yml

更新代理服务器配置
ansible-playbook -i valueq_tw/inventory_proxy-nginx.py ./valueq_tw/proxy_nginx/update_conf.yml --limit
ansible-playbook -i valueq_tw/inventory_proxy-nginx.py ./valueq_tw/proxy_nginx/update_conf.yml
