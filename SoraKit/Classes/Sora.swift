//
//  Sora.swift
//  Pods
//
//  Created by tamaki on 7/1/17.
//
//

import Foundation
import APIKit

public class Sora {
    public class func cours(success: @escaping ([Cour]) -> Void, failure: @escaping (Error) -> Void) {
        let request = CoursRequest()
        Session.send(request) { (result) in
            switch result {
            case .success(let cours):
                success(cours)
            case .failure(let error):
                print("error: \(error)")
                failure(error)
            }
        }
    }
    public class func animeTitles(OfYear year: Int, success: @escaping ([AnimeTitle]) -> Void, failure: @escaping (Error) -> Void) {
        var request = AnimeTitleRequest()
        request.year = String(year)
        Session.send(request) { (result) in
            switch result {
            case .success(let years):
                success(years)
            case .failure(let error):
                print("error: \(error)")
                failure(error)
            }
        }
    }
    public class func animeInfo(OfYear year: Int, season: SoraSeason, success: @escaping ([AnimeInfo]) -> Void, failure: @escaping (Error) -> Void) {
        var request = AnimeInfoRequest()
        request.year = String(year)
        request.season = season
        Session.send(request) { (result) in
            switch result {
            case .success(let yearDetails):
                success(yearDetails)
            case .failure(let error):
                print("error: \(error)")
                failure(error)
            }
        }
    }
}
