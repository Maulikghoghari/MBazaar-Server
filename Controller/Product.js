const PRODUCT = require("../Model/Product")

exports.addproduct = async function (req, res, next) {
    try {
        req.body.mainImage = req.files.mainImage[0].filename;                       
        req.body.subImage1 = req.files.subImage1[0].filename;
        req.body.subImage2 = req.files.subImage2[0].filename;
        req.body.subImage3 = req.files.subImage3[0].filename;

        let data = await PRODUCT.create(req.body);
        console.log(data);
        res.status(201).json({
            status: "success",
            message: "product add successfully",
            data: data
        })
    } catch (error) {
        res.status(500).json({
            status: "fail",
            message: error.message
        })
    }
}



// delete product

exports.deleteproduct = async function (req, res, next) {
    try {
        let data = await PRODUCT.findByIdAndDelete(req.query.id);

        res.status(201).json({
            status: "success",
            message: "delete contact successfully",
            data: data
        })
    }
    catch (error) {
        res.status(500).json({
            status: "fail",
            message: error.message
        })
    }

}


// update Product

exports.updateproduct = async function (req, res, next) {
  try {
    const id = req.query.id;

    const updatedFields = {
      ...req.body,
      hot: req.body.hot === 'true',
      isnew: req.body.isnew === 'true',
      bestoffer: req.body.bestoffer === 'true',
    };

    if (req.files.mainImage) {
      updatedFields.mainImage = req.files.mainImage[0].filename;
    }
    if (req.files.subImage1) {
      updatedFields.subImage1 = req.files.subImage1[0].filename;
    }
    if (req.files.subImage2) {
      updatedFields.subImage2 = req.files.subImage2[0].filename;
    }
    if (req.files.subImage3) {
      updatedFields.subImage3 = req.files.subImage3[0].filename;
    }

    const data = await PRODUCT.findByIdAndUpdate(id, updatedFields);
    console.log('Updated:', data);

    res.status(201).json({
      status: "success",
      message: "Update successfully"
    });
  } catch (error) {
    console.error(error);
    res.status(404).json({
      status: "fail",
      message: error.message
    });
  }
};


// find all

exports.findproduct = async function (req, res, nexr) {
    try {
        let data = await PRODUCT.find();
        console.log(data);
        res.status(201).json({
            status: "success",
            message: "show all data",
            data: data
        })
    } catch (error) {
        res.status(500).json({
            status: "fail",
            message: error.message
        })
    }
}


// find one 

exports.findoneproduct = async function (req, res, next) {
    try {
        let data = await PRODUCT.find({ _id: req.query.id });
        console.log(data);
        res.status(201).json({
            status: "success",
            message: "show single data",
            data: data
        })
    } catch (error) {
        res.status(500).json({
            status: "fail",
            message: error.message
        })
    }
}

