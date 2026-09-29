var express = require('express');
var jwt = require('jsonwebtoken');
const SIGNUP = require('../model/Signup');
const bcrypt = require('bcrypt');

exports.secure = async function (req,res,next) {
    try {
        let token = req.headers.token;
        if(!token){
            throw new Error("token not found");
        }
        var decoded = jwt.verify(token, 'maulik');
        let checkuser = await SIGNUP.findById(decoded.id);

        if(!checkuser){
            throw new Error("User not found");
        }
        req.userId = decoded.id;
        req.body.user = decoded.id;
        next();

    } catch (error) {
        res.status(404).json({
            status: "fail",
            message: error.message
        });
    }
}

exports.signup = async function (req, res, next) {
    try {
        req.body.password = await bcrypt.hash(req.body.password, 10);
        req.body.confirmpassword = await bcrypt.hash(req.body.confirmpassword, 10);

        let data = await SIGNUP.create(req.body);

        var token = jwt.sign({ id: data._id }, 'maulik');
        res.status(201).json({
            status: "success",
            message: "signup succesfully",
            data: data,
            token
        })
        console.log(data);
    } catch (error) {
        res.status(404).json({
            status: "fail",
            message: error.message
        })
    }
}


exports.login = async function (req, res, next) {
    try {
        let user = await SIGNUP.findOne({ email: req.body.email });
        console.log(user);

        if (!user) {
            throw new Error("user not  found");
        }

        let checkpass = await bcrypt.compare(req.body.password, user.password);
        if (!checkpass) {
            throw new Error("password incorrect");
        }

        let token = jwt.sign({ id: user._id }, "maulik");

        res.status(201).json({
            status: "success",
            message: "login succesfully",
            data: user,
            token,
             username: user.username 
        })
        console.log(user);
    } catch (error) {
        res.status(404).json({
            ststus: "fail",
            message: error.message
        })
    }
}