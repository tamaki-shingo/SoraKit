//
//  YearPeriodRequest.swift
//  Pods
//
//  Created by tamaki on 7/2/17.
//
//

import Foundation
import APIKit
import ObjectMapper

struct AnimeInfoRequest: Request {
    var year: String = ""
    var season: SoraSeason = .unknown
    
    typealias Response = [AnimeInfo]
    
    var baseURL: URL {
        return URL(string: "http://api.moemoe.tokyo/anime/v1")!
    }
    
    var method: HTTPMethod {
        return .get
    }
    
    var path: String {
        return "/master/\(year)/\(String(season.rawValue))"
    }
    
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> [AnimeInfo] {
        return Mapper<AnimeInfo>().mapArray(JSONObject: object)!
    }
}
