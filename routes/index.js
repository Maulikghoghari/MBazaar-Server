var express = require('express');
var usercontroller = require('../Controller/User');
var admincontroller = require('../Controller/Product');
var findProductDetails = require('../Controller/UserProductFetchById');
var uesrfindcontroller = require('../Controller/GetUser');
var productreview = require('../Controller/ReviewController')
const path = require('path');
const fs = require('fs');
const multer = require('multer');
var router = express.Router();


const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        const category = req.body.category;

        if (!category) {
            return cb(new Error('Category is required'), null);
        }

        const uploadPath = path.join(__dirname, '../public/images/', category);

        // Check if folder exists, else create
        if (!fs.existsSync(uploadPath)) {
            fs.mkdirSync(uploadPath, { recursive: true });
        }

        cb(null, uploadPath);
    },

    filename: function (req, file, cb) {
        const uniqueName = Date.now() + '-' + file.originalname;
        cb(null, uniqueName);
    }
});

const upload = multer({ storage: storage });

const uploadFields = upload.fields([
  { name: 'mainImage', maxCount: 1 },
  { name: 'subImage1', maxCount: 1 },
  { name: 'subImage2', maxCount: 1 },
  { name: 'subImage3', maxCount: 1 }
]);









// signup login


router.post("/signup", usercontroller.signup);
router.post("/login", usercontroller.login);





// admin 

router.post("/admin/product-add", uploadFields,admincontroller.addproduct, (req, res) => {
    const { title, category } = req.body;
    const files = req.files;
    res.json({
        success: true,
        title,
        category,
        images: {
            mainImage: files.mainImage?.[0]?.path,
            subImage1: files.subImage1?.[0]?.path,
            subImage2: files.subImage2?.[0]?.path,
            subImage3: files.subImage3?.[0]?.path,
        }
    });
});

router.put('/admin/product-update', upload.fields([
  { name: 'mainImage' },
  { name: 'subImage1' },
  { name: 'subImage2' },
  { name: 'subImage3' }
]),admincontroller.updateproduct);

router.delete("/admin/product-delete",admincontroller.deleteproduct);

router.get("/admin/product-findall",admincontroller.findproduct);

router.get("/admin/product-findone",admincontroller.findoneproduct);


// find product by id 

router.get("/product/:id",findProductDetails.getProductById);

// finsd user 

router.get("/admin/user-findall",uesrfindcontroller.getuser);

// productreview

router.post('/reviewsadd/:productId',usercontroller.secure, productreview.addReview);
router.get('/reviewsget/:productId', productreview.getProductReviews); 

module.exports = router;
