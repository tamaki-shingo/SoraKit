//
//  YearCour.swift
//  Pods
//
//  Created by tamaki on 7/2/17.
//
//

import Foundation
import ObjectMapper

public struct AnimeInfo: Mappable {
    public var id: Int?
    public var title: String?
    public var title_short1: String?
    public var title_short2: String?
    public var title_short3: String?
    public var public_url: String?
    public var twitter_account: String?
    public var twitter_hash_tag: String?
    public var cours_id: Int?
    public var created_at: String?
    public var updated_at: String?
    public var sex: Int?
    public var sequel: Int?
    public var city_code: Int?
    public var city_name: String?

    public init?(map: Map) {
        
    }
    
    public mutating func mapping(map: Map) {
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
