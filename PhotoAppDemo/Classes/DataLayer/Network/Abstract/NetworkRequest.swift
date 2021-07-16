//
//  NetworkRequest.swift
//  PhotoAppDemo
//
//  Created by Farshad Mousalou on 7/16/21.
//  Copyright © 2021 iFarshad. All rights reserved.

import Foundation
import Alamofire

protocol NetworkRequest: URLRequestConvertible {

    var validResponse: NetworkResponseValidation { get }
}
