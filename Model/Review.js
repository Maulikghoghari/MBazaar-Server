const mongoose = require('mongoose');

const reviewSchema = new mongoose.Schema({
  productId: { type: mongoose.Schema.Types.ObjectId, ref: 'Product', required: true },
  rating: { type: Number, required: true },
  review: { type: String, required: true },
  pros: String,
  cons: String,
  name: String,
  email: String,
  createdAt: { type: Date, default: Date.now }
});

const REVIEW = mongoose.model('Review', reviewSchema);
module.exports = REVIEW;

