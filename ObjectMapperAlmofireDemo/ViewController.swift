//
//  ViewController.swift
//  ObjectMapperAlmofireDemo
//
//  Created by Asmita on 19/11/18.
//  Copyright © 2018 Asmita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let contactViewModel = ContactViewModel()
    
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        getContactData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    func getContactData() {
      
        contactViewModel.fetchContactData { (completed, error) in
            if completed{
                print("data")
                self.tableView.reloadData()
            }
        }
        
    }
    
   
}
extension ViewController : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return contactViewModel.contactData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let data = contactViewModel.contactData[indexPath.row]
        cell.name.text =  data.name
        cell.address.text = data.address
        cell.email.text = data.email
        
        cell.mobile.text = contactViewModel.phoneData(contact: data)
       print(cell.mobile.text)
        
        return cell
    }
}

