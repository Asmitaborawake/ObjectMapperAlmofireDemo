//
//  ContactViewModel.swift
//  ObjectMapperAlmofireDemo
//
//  Created by Asmita on 19/11/18.
//  Copyright © 2018 Asmita. All rights reserved.
//

import Foundation
import ObjectMapper
class ContactViewModel : NSObject {
    
    var contactData = [ContactModelClass]()
    
    //fetch calendar data
    func fetchContactData(completionHandler: @escaping(Bool, String?) -> Void){
        
        APIClass.shared.fetchContactData() { (response, error) in
            
            if response != nil
            {
                self.contactData = Mapper<ContactModelClass>().mapArray(JSONArray: response!)
                
                completionHandler(true,error)
                
            }else{
                completionHandler(false, error)
            }
        }
    }
    
    
    func phoneData(contact:ContactModelClass) -> String {
        var mobile = String()
        for phone in contact.phone {
        mobile = phone.home
            print(phone.home)
        }
       
        return mobile
    }
}

