//
//  ContactModelClass.swift
//  ObjectMapperAlmofireDemo
//
//  Created by Asmita on 19/11/18.
//  Copyright © 2018 Asmita. All rights reserved.
//

import Foundation
import ObjectMapper

class ContactModelClass : NSObject , Mappable{
    
    var id = ""
    var name = ""
    var email = ""
    var address = ""
    var gender = ""
    var phone = [Phone]()
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        email <- map["email"]
        address <- map["address"]
        gender <- map["gender"]
        phone <- map["phone"]

    }
    
    
}

class Phone : NSObject , Mappable {
    
    var mobile = ""
    var home = ""
    var office = ""
    
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        
        mobile <- map["mobile"]
        home <- map["home"]
        office <- map["office"]

        
    }
    
    
    
    
}
