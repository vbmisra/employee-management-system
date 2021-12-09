// import express and mysql2
//const inquirer = require('inquirer');
const express = require('express');
const mysql = require('mysql2');

const PORT = process.env.PORT || 3003;
const app = express();

//express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

const db = mysql.createConnection(
    {
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'cms_db'
    },
    console.log('Connected to the cms_db database.')
);

app.post('/api/new-employee')