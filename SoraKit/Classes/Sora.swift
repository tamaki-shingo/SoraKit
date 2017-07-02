//
//  Sora.swift
//  Pods
//
//  Created by tamaki on 7/1/17.
//
//

import Foundation
import APIKit

class Sora {
    func cours(success: @escaping ([Cour]) -> Void, failure: @escaping (Error) -> Void) {
        let request = CoursRequest()
        Session.send(request) { (result) in
            switch result {
            case .success(let cours):
                print(cours)
                success(cours)
            case .failure(let error):
                print("error: \(error)")
                failure(error)
            }
        }
    }
    func year(_ year: String, success: @escaping ([Year]) -> Void, failure: @escaping (Error) -> Void) {
        var request = YearRequest()
        request.year = year
        Session.send(request) { (result) in
            switch result {
            case .success(let years):
                print(years)
                success(years)
            case .failure(let error):
                print("error: \(error)")
                failure(error)
            }
        }
    }
    func year(_ year: String, period: SoraPeriod, success: @escaping ([YearPeriod]) -> Void, failure: @escaping (Error) -> Void) {
        var request = YearPeriodRequest()
        request.year = year
        request.period = period
        Session.send(request) { (result) in
            switch result {
            case .success(let yearDetails):
                print(yearDetails)
                success(yearDetails)
            case .failure(let error):
                print("error: \(error)")
                failure(error)
            }
        }
    }
}