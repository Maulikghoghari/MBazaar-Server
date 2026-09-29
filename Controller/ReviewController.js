const Review = require('../Model/Review');

exports.addReview = async (req, res) => {
  try {
    req.body.productId = req.params.productId;
    await Review.create(req.body);
    res.status(201).json({
      status: "success",
      message: "Review added successfully",
    });
  } catch (err) {
    res.status(400).json({
      success: false,
      message: err.message,
    });
  }
};

exports.getProductReviews = async (req, res) => {
  try {
    const productId = req.params.productId;
    console.log("Fetched productId:", productId);

    const reviews = await Review.find({ productId: productId });

    res.json({ success: true, reviews });
  } catch (err) {
    console.error("Error in getProductReviews:", err);
    res.status(500).json({ success: false, message: "Server Error" });
  }
};
