var db = require("../models");
var axios = require("axios");

module.exports = function(app) {
  // Get all examples
  app.get("/api/products", function(req, res) {
    db.products.findAll({}).then(function(dbproducts) {
      res.json(dbproducts);
    });
  });

  // Create a new example
  app.get("/api/products/:id", function(req, res) {
    db.products
      .findOne({
        where: {
          id: req.params.id
        }
      })
      .then(function(dbproducts) {
        res.json(dbproducts);
      });
  });

  app.get("/form/api/location-search/:city", function(req, res) {
    var city = req.params.city;
    var url =
      "https://maps.googleapis.com/maps/api/distancematrix/json?origins=Philadelphia&destinations=" +
      city +
      "&key=AIzaSyB03QGGozKSq1zxY6mCsiG7tCmXqtDJZDk";
    console.log(url);
    axios(url)
      .then(function(response) {
        console.log(response.data);
        res.json(response.data);
      })
      .catch(function(err) {
        console.log(err);
      });
  });

  app.put("/api/products/:id", function(req, res) {
    db.products.findAll({ id: req.params.id }).then(function(dbproducts) {
      var newInventory = dbproducts.inventory - req.body.inventory;
      db.products.update(
        {
          where: {
            id: req.params.id
          }
        },
        {
          inventory: newInventory
        }
      );
      // console.log(req.body.inventory);
      res.json(dbproducts);
    });
  });
};

// app.put('/api/products/:id', function(req, res) {
//   // req.body.id = 4
//   // req.body.inventory -> quantity, name, location
//   db.Product.findAll({id: req.body.id}).then(function(product) {
//     var newQuantity = product.quantity - req.body.inventory.quantity
//     db.Product.update({
//       where: {
//         id: req.body.id
//       }
//     },{
//       quantity: newQuantity
//     })
//   })
// })
