var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
  
    // Your port; if not 3306
    port: 3306,
  
    // Your username
    user: "root",
  
    // Your password
    password: "12341234",
    database: "bamazon"
  });

  connection.connect(function(err) {
    if (err) throw err;
    // run the start function after the connection is made to prompt the user
    start();
  });

  function start(){
      connection.query('SELECT * FROM product',function(err,res){
        if (err) throw err;
        console.log("Welcome");
        for(var i =0; i<res.length;i++){
            console.log("Item Id: " + res[i].item_id + " | Product name: " + res[i].product_name + " | Price: " + res[i].price);
        }
        inquirer.prompt([
            {
                name:"id",
                type:'input',
                message:"please choose an id of item you would like to buy:"
            },
            {
                name:"howmany",
                type:"input",
                message:"how many would like to buy?"
            }
        ]).then( function(process){

            let product = (process.id)-1;
            let quantity = parseInt(process.howmany);
            let total = parseFloat((res[product].price)*quantity);

            if(quantity<=res[product].stock_quantity){
                connection.query('UPDATE product SET ? WHERE?',
                [
                    {
                        stock_quantity: (res[product].stock_quantity - quantity)
                    },
                    {
                        item_id:process.id
                    }
                ],
                function(err,res){
                    if (err) throw err;
                    console.log("Your total is $" + total);
                })
            }else{
                console.log("Sorry, we don't have enough products");
            }
        }
    )
    })
}
  