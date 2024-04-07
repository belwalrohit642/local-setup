#!/bin/bash
cd note-fullstack
cd notes-ui
npm install react react-dom react-router-dom react-scripts web-vitals
npm start &

cd ../server
npm install body-parser cross-env express mocha mysql2 nodemon sequelize should sqlite3 supertest
npm start &

cd ../database
service mysql start
mysql -u root -psecret < notes.sql

