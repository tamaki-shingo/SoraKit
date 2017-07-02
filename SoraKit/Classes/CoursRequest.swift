//
//  Cours.swift
//  Pods
//
//  Created by tamaki on 7/1/17.
//
//

import Foundation
import APIKit
import ObjectMapper

struct CoursRequest: Request {
    typealias Response = [Cour]
    
    var baseURL: URL {
        return URL(string: "http://api.moemoe.tokyo/anime/v1")!
    }
    
    var method: HTTPMethod {
        return .get
    }
    
    var path: String {
        return "/master/cours"
    }
    
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> [Cour] {
        let coursDict = Mapper<Cour>().mapDictionary(JSONObject: object)?.values
        let coursArray = [Cour](coursDict!)
        return coursArray
    }
    
}

