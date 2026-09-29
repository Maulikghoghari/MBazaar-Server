const PRODUCT = require("../Model/Product");
// get product using id
exports.getProductById = async function (req, res) {
  try {
    const product = await PRODUCT.findById(req.params.id);
    if (!product) return res.status(404).json({ error: "Product not found" });

    const basePath = `http://localhost:4001/images/${product.category}/`;

    const fullProduct = {
      ...product.toObject(),
      images: {
        mainImage: basePath + product.mainImage,
        subImage1: basePath + product.subImage1,
        subImage2: basePath + product.subImage2,
        subImage3: basePath + product.subImage3,
      },
    };

    res.json(fullProduct);
  } catch (err) {
    res.status(500).json({ error: "Error fetching product" });
  }
};


