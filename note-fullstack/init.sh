#!/bin/bash
cd /app/notes-ui
npm install react react-dom react-router-dom react-scripts web-vitals
#nohup npm start &

cd ../server
npm install body-parser cross-env express mocha mysql2 nodemon sequelize should sqlite3 supertest
nohup npm start &

cd ../notes-ui
nohup npm start &
