//
//  Cour.swift
//  Pods
//
//  Created by tamaki on 7/1/17.
//
//

import Foundation
import ObjectMapper

struct Cour: Mappable {
    var id: Int?
    var year: Int?
    var cours: Int?
    
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        self.id    <- map["id"]
        self.year  <- map["year"]
        self.cours <- map["cours"]
    }
}
