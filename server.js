const express = require("express");
const Sequelize = require("sequelize");
const bodyParser = require("body-parser");
const port = 3000;
const app = express();

const sequelize = new Sequelize("api", "root", "", {
  host: "localhost",
  dialect: "mariadb"
});

sequelize
  .authenticate()
  .then(() => {
    console.log("Connection has been established successfully.");
  })
  .catch(err => {
    console.error("Unable to connect to the database:", err);
  });

const City = sequelize.define(
  "city",
  {
    // attribute
    IDCities: {
      type: Sequelize.UUID,
      defaultValue: Sequelize.UUIDV4,
      primaryKey: true
    },
    Name: {
      type: Sequelize.STRING,
      allowNull: false
    }
  },
  {
    freezeTableName: true,
    tableName: "cities"
    // options
  }
);

app.use(bodyParser.urlencoded());

/*
City.create({
  Name: "Venezia"
})
  .then(() => {
    console.log("Genova created");
  })
  .catch(e => {
    console.log("Error ", e);
  });
*/
/*
app.get("/cities", async (request, response) => {
  if (request.query.name && request.query.name.length)
    var where = {
      name: request.query.name
    };
  else {
    var where = {};
  }

  const cities = await City.findAll({
    where: where
  });

  return response.json(cities);
});
*/
/*
app.get("/cities/:IDCities", async (request, response) => {
  const city = await City.findOne({
    where: {
      IDCities: request.params.IDCities
    }
  });
  return response.json(city);
});
*/

app.post("/cities", async (request, response) => {
  const city = await City.create({
    Name: request.body.Name
  });

  return response.json(city);
});

app.listen(port, () => {
  console.log("app listing on port", port);
});
