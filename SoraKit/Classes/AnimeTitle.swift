//
//  Year.swift
//  Pods
//
//  Created by tamaki on 7/2/17.
//
//

import Foundation
import ObjectMapper

public struct AnimeTitle: Mappable {
    public var id: Int?
    public var title: String?
    
    public init?(map: Map) {
        
    }
    
    public mutating func mapping(map: Map) {
        self.id    <- map["id"]
        self.title <- map["title"]
    }

}
