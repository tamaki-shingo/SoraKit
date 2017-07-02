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

struct YearPeriodRequest: Request {
    var year: String = ""
    var period: SoraPeriod = .unknown
    
    typealias Response = [YearPeriod]
    
    var baseURL: URL {
        return URL(string: "http://api.moemoe.tokyo/anime/v1")!
    }
    
    var method: HTTPMethod {
        return .get
    }
    
    var path: String {
        return "/master/\(year)/\(String(period.rawValue))"
    }
    
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> [YearPeriod] {
        return Mapper<YearPeriod>().mapArray(JSONObject: object)!
    }
    
}
