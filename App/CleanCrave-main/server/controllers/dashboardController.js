const Note = require("../models/Notes");
const mongoose=  require("mongoose");

/**
 * Get Dashboard 
*/

exports.dashboard = async(req, res)=>{

    let perPage = 8;
    let page = req.query.page || 1


    const locals = {
            title: "Dashboard - Clean Crave ",
        description: "Help from drugs"
    }

    try {   
        Note.aggregate([
            {
                $sort:{
                    createdAt: -1,
                }
            },
            {
                $match: {user: mongoose.Types.ObjectId(req.user.id)}
            },
            {
                $project: {
                    title:{ $substr : ['$title', 0, 30] },
                    body: { $substr: ['$body', 0, 100] } 
                }
            }
        ])
        .skip(perPage*page - perPage)
        .limit(perPage)
        .exec(function(err, notes){
            Note.count().exec(function(err, count){
                if(err) return next(err);
                       
                res.render("dashboard/index", {
                    userName: req.user.firstName,
                    locals,
                    notes,
                    layout: "../views/layouts/dashboard",
                    current: page,
                    pages: Math.ceil(count/perPage)
                    
                });
            })
        })
    } catch (error) {
        console.log(error);
    }
    
}

//dummy data
// async function insertDummyCategoryData(){
//     try {
//         await Note.insertMany([
//             {
//                 user: "63a311c746a82a5d58143e1a",
//                 title: "In this tutorial, we are going to create a simple, accessible and responsive navigation menu bar and side menu using TailwindCSS v3.0 and Alpine.js. For those of you who would prefer a Video Tutorial you can watch it here.",
//                 body: "Let's look into JS animations",
//                 createdAt: "1671634422539"
//               },
//               {
//                 user: "63a311c746a82a5d58143e1a",
//                 title: "Create Responsive Side Navigation using TailwindCSS and AlpineJs",
//                 body: "Let's look into JS animations",
//                 createdAt: "1671634422539"
//               },
//               {
//                 user: "63a311c746a82a5d58143e1a",
//                 title: "JavaScript Animations",
//                 body: "JavaScript Animations are pretty cool.",
//                 createdAt: "1671634422539"
//               },
//               {
//                 user: "63a311c746a82a5d58143e1a",
//                 title: "JavaScript Async Await",
//                 body: "In this short tutorial, I will re-use some of the code I wrote for a YouTube tutorial creating an Apex Legend-inspired menu. I will make a simple function that fetches data from a dummy API and display some of it on the page.",
//                 createdAt: "1671634422539"
//               }
//         ]);
//     } catch (error) {
//         console.log(error);
//     }
// }
// insertDummyCategoryData();

