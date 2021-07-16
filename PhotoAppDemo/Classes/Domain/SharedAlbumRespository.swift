//
//  SharedAlbumRespository.swift
//  PhotoAppDemo
//
//  Created by Farshad Mousalou on 7/16/21.
//  Copyright © 2021 iFarshad. All rights reserved.
//

import Foundation
import Alamofire
import RxSwift
import RxCocoa

/**
 The `SharedAlbumRepository` protocol.
 */
protocol SharedAlbumRepository: AnyObject {

    /**
     Fetch Album for given key id.
     - Parameter id: the `String` key id to look up and fetch Album
     */
    func fetchAlbum(forIdentifier id: String) -> Observable<Album>

}
