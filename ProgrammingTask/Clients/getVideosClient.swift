//
//  getVideosClient.swift
//  ProgrammingTask
//
//  Created by Apple on 5/2/20.
//  Copyright © 2020 uaebarq. All rights reserved.
//

import Foundation
import SwiftyJSON

class videosClient: parentClient{
    
    func getMostlikedPhotos(onSuccess: @escaping (JSON) -> (), onFailure: @escaping (JSON) -> ()){
        //videosURL
        self.communicateWithApi(url: videosURL, pagingUrl: nil, method: .post, parameters: nil, onSuccess: onSuccess, onFailure: onFailure)
    }
    
}
