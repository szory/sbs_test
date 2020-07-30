#!/bin/bash
cat /var/jenkins_home/workspace/sbs_test_master/Dump20190914.sql | docker exec -i mysql1/usr/bin/mysql -uroot --password=1234 sharebag