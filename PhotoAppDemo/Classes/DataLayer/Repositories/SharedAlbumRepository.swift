//
//  SharedAlbumRepository.swift
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
 The `SharedAlbumRemoteRepository` that implement `SharedAlbumRepository` and fetch Data from remote resouce through internet.
 */
final class SharedAlbumRemoteRepository: SharedAlbumRepository {

    let service: NetworkService
    let validation: NetworkResponseValidation

    /**
     Default initialize constructor
     - Parameters:
        - service: The `NetworkService` instance.
        - validation: The `NetworkResponseValidation` to validation response.
     */
    init(service: NetworkService, validation: NetworkResponseValidation) {
        self.service = service
        self.validation = validation
    }

    func fetchAlbum(forIdentifier id: String) -> Observable<Album> {

        do {
            let url = try (AppConfig.baseURL.absoluteString + "/shared/\(id)/media").asURL()
            let request = APIParametersRequest(url: url, validResponse: validation)

            return service.execute(request: request)
                .map(map(response:))

        } catch let error {
            return .error(error)
        }
    }


    private func map<T: Decodable>(response: APIServerResponse<T>) throws -> T {

        guard let data = response.data else {
            throw APIServerResponseError.unknown
        }

        return data
    }
}

final class SharedAlbumLocalRepository: SharedAlbumRepository {

    let storage: AnyObject

    init(storage: AnyObject) {
        self.storage = storage
    }

    func fetchAlbum(forIdentifier id: String) -> Observable<Album> {
        return .never()
    }

}
