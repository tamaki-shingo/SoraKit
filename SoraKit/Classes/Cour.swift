//
//  Cour.swift
//  Pods
//
//  Created by tamaki on 7/1/17.
//
//

import Foundation
import ObjectMapper

public struct Cour: Mappable {
    public var id: Int?
    public var year: Int?
    public var cours: Int?
    
    
    public init?(map: Map) {
        
    }
    
    public mutating func mapping(map: Map) {
        self.id    <- map["id"]
        self.year  <- map["year"]
        self.cours <- map["cours"]
    }
}
