const SIGNUP =  require('../Model/Signup')

exports.getuser = async function (req, res, next) {
    try {
        let data = await SIGNUP.find();
        console.log(data);
        res.status(201).json({
            status: "success",
            message: "show all data",
            data: data
        })
    } catch (error) {
        res.status(404).json({
            status: "fail",
            message: error.message
        })
    }
}
