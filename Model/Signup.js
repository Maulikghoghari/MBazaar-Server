const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const SignupSchema = new Schema({
    username: String,
    email: String,
    password: String,
    confirmpassword:String,
    createdAt: {
        type: Date,
        default: Date.now
    }
});

const SIGNUP = mongoose.models.signup || mongoose.model("signup", SignupSchema);
module.exports= SIGNUP;