require("dotenv").config();

const express = require("express");
const expressLayouts = require("express-ejs-layouts");
const connectDB = require("./server/config/db");
const session = require("express-session");
const passport = require("passport");
const MongoStore = require("connect-mongo");
const cookieParser = require("cookie-parser");
const flash = require("connect-flash");

const app = express();

// Port setting
const port = 3000 || process.env.PORT;

// Connection to Database
connectDB();

// Middleware 
app.use(express.urlencoded({extended: true}));
app.use(express.json());

// Static Files
app.use(express.static("public"));

// Templating engine
app.use(expressLayouts);
app.set('layout', './layouts/main');
app.set('view engine', 'ejs');


app.use(cookieParser('CleanCrave'));
app.use(flash());

app.use(session({
    secret: "Orange Cat",
    resave: false,
    saveUninitialized: true,
    store: MongoStore.create({
        mongoUrl: process.env.MONGODB_URI
    }),
    //cookie expiry once created a session
    // cookie: {maxAge: new Date (Date.now() + (3600000))};
}));

app.use(passport.initialize());
app.use(passport.session());

app.use("/", require("./server/routes/index"));
app.use("/", require("./server/routes/auth"));
app.use("/", require("./server/routes/dashboard"));


app.get("*", function(req, res){
    res.status(404).render("404");
});


// App listen
app.listen(port, () => {console.log(`App listening to port ${port}`);})