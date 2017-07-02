//
//  YearCour.swift
//  Pods
//
//  Created by tamaki on 7/2/17.
//
//

import Foundation
import ObjectMapper

struct YearPeriod: Mappable {
    var id: Int?
    var title: String?
    var title_short1: String?
    var title_short2: String?
    var title_short3: String?
    var public_url: String?
    var twitter_account: String?
    var twitter_hash_tag: String?
    var cours_id: Int?
    var created_at: String?
    var updated_at: String?
    var sex: Int?
    var sequel: Int?
    var city_code: Int?
    var city_name: String?

    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        self.id               <- map["id"]
        self.title            <- map["title"]
        self.title_short1     <- map["title_short1"]
        self.title_short2     <- map["title_short2"]
        self.title_short3     <- map["title_short3"]
        self.public_url       <- map["public_url"]
        self.twitter_account  <- map["twitter_account"]
        self.twitter_hash_tag <- map["twitter_hash_tag"]
        self.cours_id         <- map["cours_id"]
        self.created_at       <- map["created_at"]
        self.updated_at       <- map["updated_at"]
        self.sex              <- map["sex"]
        self.sequel           <- map["sequel"]
        self.city_code        <- map["city_code"]
        self.city_name        <- map["city_name"]
    }
    
}
