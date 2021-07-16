//
//  AppConfig.swift
//  PhotoAppDemo
//
//  Created by Farshad Mousalou on 7/16/21.
//  Copyright © 2021 iFarshad. All rights reserved.
//

import Foundation

/// The struct that hold the app configuration
/// such as `APIKey` and `BaseURL`
struct AppConfig {

    // put your api code here, this api key would be fulfilled by CI/CD
    static let APIKey = ""

    // swiftlint:disable:next force_unwrapping
    static let baseURL = URL(string: "https://api1.kiliaro.com")!

}
