/**
 * GET homepage 
*/

exports.homepage = async(req, res) => {
    const locals = {
        title:  "NodeJS App",
        description: "Free Notes App"
    }

    res.render("index", {
        locals,
        layout: "../views/layouts/front-page.ejs"
    });
}

/**
 * GET about 
*/


exports.about = async(req, res) => {
    const locals = {
        title:  "About - Clean Crave",
        description: "Help from Drugs"
    }

    res.render("about", locals);
}


exports.tracker = async(req, res) => {
    const locals = {
        title:  "Tracker - Clean Crave",
        description: "Help from Drugs"
    }

    res.render("tracker", locals);
}

exports.products = async(req, res) => {
    const locals = {
        title:  "Products - Clean Crave",
        description: "Help from Drugs"
    }

    res.render("products", locals);
}
exports.contact = async(req, res) => {

    res.render("contact");
}                   
