//
//  YearRequest.swift
//  Pods
//
//  Created by tamaki on 7/2/17.
//
//

import Foundation
import APIKit
import ObjectMapper

struct YearRequest: Request {
    var year: String = ""
    
    typealias Response = [Year]
    
    var baseURL: URL {
        return URL(string: "http://api.moemoe.tokyo/anime/v1")!
    }
    
    var method: HTTPMethod {
        return .get
    }
    
    var path: String {
        return "/master/\(year)"
    }
    
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> [Year] {
        return Mapper<Year>().mapArray(JSONObject: object)!
    }
    
}
