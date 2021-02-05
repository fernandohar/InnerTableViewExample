//
//  ViewController.swift
//  InnerTableViewExample
//
//  Created by Fernando on 3/11/2020.
//  Copyright © 2020 Fernando. All rights reserved.
//

import UIKit


public class Order{
    public var selectedProducts : [SelectedProduct]
    public let orderDate : Date
    public let orderNum : Int
    init(_ seed : Int) {
        selectedProducts = []
        orderDate = Date()
        orderNum = seed + 1
    }
    public func addSelectedProduct(_ selectedProduct: SelectedProduct){
        self.selectedProducts.append(selectedProduct)
    }
}

public class SelectedProduct{
    public let product : Product
    public let quantity : Int
    
    init (product : Product){
        self.product = product
        self.quantity = 1
    }
    
    init (product : Product, quantity : Int){
        self.product = product
        self.quantity = quantity
    }
}

public class Product{
    public let productName: String
    public let productDescription : String?
    public let price: Float

    init(productName : String, price: Float){
        self.productName  = productName
        self.price = price
        self.productDescription = nil
    }
    
    init(productName : String, productDescription: String, price: Float){
        self.productName = productName
        self.productDescription = productDescription
        self.price = price
    }
}

class ViewController: UIViewController {
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var outerTableView: UITableView!
    
    private var allOrders : [Order] = [] //our mini dataModel
    private var seed = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.outerTableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: self.outerTableView.frame.width, height: 0))
        self.outerTableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: self.outerTableView.frame.width, height: 0))        
        createMockOrders()
    }

}

extension ViewController{
    private func createMockOrders(){
        // create a few drinks
        let cokaCoka = Product(productName: "Coka Cola",  productDescription: "5oz Size", price: 12.5)
        let cokeZero = Product(productName: "Coka Zero", productDescription: "5oz Size", price: 12.5)
        let frenchFries = Product(productName: "French Fries", price: 16.0)
        let doubleCheese = Product(productName: "Double Cheeseburger", price: 38.0)
        let cheesyAngus = Product(productName: "Cheesy Champignon Angus Burger", productDescription: "With 130g patty", price: 35.0)
        let beef_n_egg = Product(productName: "Beef and Egg Burger", productDescription: "Limited time only", price: 19.00)
        let chickenNuggets = Product(productName: "Chicken Nuggets (6 pcs)", price: 19.5)
        let spicyChicken = Product(productName: "Spicy Jalapeno Chicken Burger", price: 33.0)
        let gcb = Product(productName: "GCB", productDescription: "Grilled Chicken Burger", price: 23.5)
        
        //Order 1 - Double Cheese burger mean
        let order1 = Order(seed)
        seed = seed + 1
        allOrders.append(order1)
        order1.addSelectedProduct(SelectedProduct(product: cokaCoka))
        order1.addSelectedProduct(SelectedProduct(product: frenchFries))
        order1.addSelectedProduct(SelectedProduct(product: doubleCheese))
        
        
        //Order 2 - 2 person mean
        let order2 = Order(seed)
        seed = seed + 1
        allOrders.append(order2)
        order2.addSelectedProduct(SelectedProduct(product: cokeZero, quantity: 20))
        order2.addSelectedProduct(SelectedProduct(product: frenchFries, quantity: 2))
        order2.addSelectedProduct(SelectedProduct(product: doubleCheese, quantity: 2))
        order2.addSelectedProduct(SelectedProduct(product: cheesyAngus, quantity: 2))
        order2.addSelectedProduct(SelectedProduct(product: doubleCheese, quantity: 2))
        order2.addSelectedProduct(SelectedProduct(product: cheesyAngus, quantity: 200))
        
        let order3 = Order(seed)
        seed = seed + 1
        allOrders.append(order3)
        order3.addSelectedProduct(SelectedProduct(product: gcb, quantity: 30))
        order3.addSelectedProduct(SelectedProduct(product: spicyChicken, quantity: 3))
        order3.addSelectedProduct(SelectedProduct(product: chickenNuggets, quantity: 3))
        order3.addSelectedProduct(SelectedProduct(product: beef_n_egg, quantity: 3))
        order3.addSelectedProduct(SelectedProduct(product: cheesyAngus, quantity: 3))
        order3.addSelectedProduct(SelectedProduct(product: frenchFries, quantity: 3))
        order3.addSelectedProduct(SelectedProduct(product: cokaCoka, quantity: 3))
        order3.addSelectedProduct(SelectedProduct(product: cokeZero, quantity: 300))
        
        let order4 = Order(seed)
        seed = seed + 1
        allOrders.append(order4)
        order4.addSelectedProduct(SelectedProduct(product: frenchFries, quantity: 40))
        order4.addSelectedProduct(SelectedProduct(product: doubleCheese, quantity: 4))
        order4.addSelectedProduct(SelectedProduct(product: cokaCoka, quantity: 4))
        order4.addSelectedProduct(SelectedProduct(product: cokeZero, quantity: 4))
        order4.addSelectedProduct(SelectedProduct(product: frenchFries, quantity: 4))
        order4.addSelectedProduct(SelectedProduct(product: doubleCheese, quantity: 4))
        order4.addSelectedProduct(SelectedProduct(product: cokaCoka, quantity: 4))
        order4.addSelectedProduct(SelectedProduct(product: cokeZero, quantity: 4))
        order4.addSelectedProduct(SelectedProduct(product: cokaCoka, quantity: 4))
        order4.addSelectedProduct(SelectedProduct(product: cokeZero, quantity: 400))
        
        let order5 = Order(seed)
        seed = seed + 1
        allOrders.append(order5)
        order5.addSelectedProduct(SelectedProduct(product: cokaCoka, quantity: 50))
        order5.addSelectedProduct(SelectedProduct(product: frenchFries, quantity: 5))
        order5.addSelectedProduct(SelectedProduct(product: doubleCheese, quantity: 5))
        order5.addSelectedProduct(SelectedProduct(product: cokaCoka, quantity: 5))
        order5.addSelectedProduct(SelectedProduct(product: frenchFries, quantity: 5))
        order5.addSelectedProduct(SelectedProduct(product: doubleCheese, quantity: 5))
        order5.addSelectedProduct(SelectedProduct(product: cokaCoka, quantity: 5))
        order5.addSelectedProduct(SelectedProduct(product: frenchFries, quantity: 5))
        order5.addSelectedProduct(SelectedProduct(product: doubleCheese, quantity: 5))
        order5.addSelectedProduct(SelectedProduct(product: cokaCoka, quantity: 5))
        order5.addSelectedProduct(SelectedProduct(product: frenchFries, quantity: 5))
        order5.addSelectedProduct(SelectedProduct(product: doubleCheese, quantity: 500))
        
        let order6 = Order(seed)
        seed = seed + 1
        allOrders.append(order6)
        order6.addSelectedProduct(SelectedProduct(product: gcb, quantity: 60))
        order6.addSelectedProduct(SelectedProduct(product: spicyChicken, quantity: 6))
        order6.addSelectedProduct(SelectedProduct(product: chickenNuggets, quantity: 6))
        order6.addSelectedProduct(SelectedProduct(product: beef_n_egg, quantity: 6))
        order6.addSelectedProduct(SelectedProduct(product: cheesyAngus, quantity: 6))
        order6.addSelectedProduct(SelectedProduct(product: frenchFries, quantity: 6))
        order6.addSelectedProduct(SelectedProduct(product: cokaCoka, quantity: 6))
        order6.addSelectedProduct(SelectedProduct(product: cokeZero, quantity: 6))
        order6.addSelectedProduct(SelectedProduct(product: gcb, quantity: 6))
        order6.addSelectedProduct(SelectedProduct(product: spicyChicken, quantity: 6))
        order6.addSelectedProduct(SelectedProduct(product: chickenNuggets, quantity: 6))
        order6.addSelectedProduct(SelectedProduct(product: beef_n_egg, quantity: 6))
        order6.addSelectedProduct(SelectedProduct(product: cheesyAngus, quantity: 6))
        order6.addSelectedProduct(SelectedProduct(product: frenchFries, quantity: 2))
        order6.addSelectedProduct(SelectedProduct(product: cokaCoka, quantity: 6))
        order6.addSelectedProduct(SelectedProduct(product: cokeZero, quantity: 600))
        
        
    }
}
extension ViewController: UITableViewDelegate{

    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        if tableView == outerTableView{
            return nil
        }else{
            let edit = UITableViewRowAction(style: .normal, title: "EDIT") { (rowaction, indexPath) in
                    print ("Editing")
            }
            return [edit]
        }
    }
    
   
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == outerTableView{
            return allOrders.count
        }else{
            let innerTable = tableView as! InnerTable
            let orderIndex = innerTable.orderIndex
            if orderIndex >= 0{
                return allOrders[orderIndex].selectedProducts.count
            }else{
                return 0
            }
           
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == outerTableView{
            let order = allOrders[indexPath.row]
            if let cell = tableView.dequeueReusableCell(withIdentifier: "outercell", for: indexPath) as? OuterTableViewCell{
                cell.outerLabel.text = "Order Number: \(String(describing: order.orderNum))"

                //The order of the following two lines are important
                cell.innerTable.orderIndex = indexPath.row
                cell.setTableViewDataSourceDelegate(self, forRow: indexPath.row)
                return cell
            }

        }else{
            guard let innerTable = tableView as? InnerTable else{
                fatalError("Not InnerTable type")
            }
            guard tableView.tag < allOrders.count else{
                fatalError("Out of bounce - tableView.tag: \(tableView.tag)")
            }
            
            let order = allOrders[innerTable.orderIndex]
            
            guard indexPath.row < order.selectedProducts.count else{
                fatalError("Out of bounce - tableView.tag: \(tableView.tag) indexPath.row: \(indexPath.row)")
            }
            let cell = tableView.dequeueReusableCell(withIdentifier: "innercell", for: indexPath) as! InnerTableViewCell
            let selectedProduct = order.selectedProducts[indexPath.row]
            let product = selectedProduct.product
            
            cell.innerLabel.text = product.productName + " X " + String(describing: selectedProduct.quantity)
            cell.innerDescriptionLabel.text = product.productDescription
            cell.innerPriceLabel.text = String(describing: product.price)
            
            return cell
        }
        return UITableViewCell()
    }
    

}

