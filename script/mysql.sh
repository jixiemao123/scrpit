create database middle_gw;
create user middle_gw_user@'10.%' identified by 'ZMi3G0pmP6yNNvT3';
grant all on middle_gw.* to middle_cps_user@'10.%';
flush privileges;
