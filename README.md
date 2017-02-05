# Reloading database

## Installation

1. `aptitude install mysql-server mysql-client libmysqlclient-dev libjpg zlib libjpeg-dev`
1. `cd /usr/local`
1. `virtualenv reloading`
1. `cd reloading`
1. `. bin/activate`
1. `pip install Django MySQL-python diazo numpy Pillow`
1. `git clone https://github.com/tsimkins/reloading.git app`


## MySQL Setup

    mysql> create database reloading;
    
    mysql> create user 'reloading'@'localhost'  identified by 'reloading';
    
    mysql> grant all on reloading.* to 'reloading'@'localhost';
    
    mysql> flush privileges;
