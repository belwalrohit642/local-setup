#!/bin/bash
cd notes-ui
npm install react react-dom react-router-dom react-scripts web-vitals
#nohup npm start &

cd ../server
npm install body-parser cross-env express mocha mysql2 nodemon sequelize should sqlite3 supertest
nohup npm start &

cd ../notes-ui
nohup npm start &


cd ../database
service mysql start
mysql -u root -psecret < notes.sql
echo "CREATE USER 'rohit'@'localhost' IDENTIFIED BY 'secret';" | mysql -u root -psecret
echo "GRANT ALL PRIVILEGES ON *.* TO 'rohit'@'localhost' WITH GRANT OPTION;" | mysql -u root -psecret
echo "FLUSH PRIVILEGES;" | mysql -u root -psecret
