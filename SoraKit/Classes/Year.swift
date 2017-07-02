//
//  Year.swift
//  Pods
//
//  Created by tamaki on 7/2/17.
//
//

import Foundation
import ObjectMapper

struct Year: Mappable {
    var id: Int?
    var title: String?
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        self.id    <- map["id"]
        self.title <- map["title"]
    }

}
