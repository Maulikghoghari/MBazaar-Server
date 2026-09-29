const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const ProductSchema = new Schema({
    title: String,
    category: String,
    oldprice: Number,
    price: Number,
    hot: { type: Boolean, default: false },
    isnew: { type: Boolean, default: false },
    instock: { type: Boolean, default: true },
    newgoods: {type: Boolean, default: true },
    bestoffer: { type: Boolean, default: false },
    discount: { type: String, default: false },
    mainImage: String,
    subImage1: String,
    subImage2: String,
    subImage3: String,
    createdAt: {
        type: Date,
        default: Date.now
    }
});

const PRODUCT = mongoose.model("product", ProductSchema);
module.exports = PRODUCT;