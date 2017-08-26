//
//  AnimeTitleRequest.swift
//  Pods
//
//  Created by tamaki on 7/2/17.
//
//

import Foundation
import APIKit
import ObjectMapper

struct AnimeTitleRequest: Request {
    var year: String = ""
    
    typealias Response = [AnimeTitle]
    
    var baseURL: URL {
        return URL(string: "http://api.moemoe.tokyo/anime/v1")!
    }
    
    var method: HTTPMethod {
        return .get
    }
    
    var path: String {
        return "/master/\(year)"
    }
    
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> [AnimeTitle] {
        return Mapper<AnimeTitle>().mapArray(JSONObject: object)!
    }
    
}
