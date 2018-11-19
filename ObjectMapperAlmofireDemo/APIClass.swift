//
//  APIClass.swift
//  ObjectMapperAlmofireDemo
//
//  Created by Asmita on 19/11/18.
//  Copyright © 2018 Asmita. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
class APIClass : NSObject {
    
    static let shared = APIClass()
    let appurl = APPURL()
    
    func fetchContactData(completionHandler: @escaping (([[String:Any]]?,String?) -> Swift.Void)) -> Void {
        
       // let parameters:Parameters = nil
        
        let url = appurl.contactURL()
         Alamofire.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil)
            .validate()
            .responseJSON(completionHandler: { response in
                switch response.result {
                    
                case .success:
                    
                    if let responseObject = (response.result.value as? [String:Any])?["contacts"] as? [[String:Any]]{
                        
                        
                        //sending response in completionhandler
                        completionHandler(responseObject,nil)
                        
                    }
                    
                case .failure(let error):
                    print(error)
                    
                    
                    
                }
            })
        
    }

    
}
