const express= require("express");
const router = express.Router();
const mainController = require("../controllers/mainController");

/**
 * App Routes
*/

router.get("/", mainController.homepage);
router.get("/about", mainController.about);
router.get("/tracker", mainController.tracker);
router.get("/products", mainController.products);
router.get("/contact", mainController.contact);

module.exports = router;