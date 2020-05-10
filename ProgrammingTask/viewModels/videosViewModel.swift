//
//  videosViewModel.swift
//  ProgrammingTask
//
//  Created by Apple on 5/2/20.
//  Copyright © 2020 uaebarq. All rights reserved.
//

import UIKit
import SwiftyJSON

class videosViewModel: NSObject {

    @IBOutlet var videosClient : videosClient!
    
    var videosArr : [VideosModel] = []
    
    func getAllVideos(onSuccess: @escaping (Bool)->(), onFailure: @escaping (String?)->()) {
        

        self.videosClient.getVideosFromApi(onSuccess: { (responseSuccess) in
                if responseSuccess != JSON.null{
                    self.videosArr = videoParser().parsePhotos(fromResponse: responseSuccess)
                    onSuccess(true)
                }else{
                    onSuccess(false)
                }

            
        }) { (responseFailure) in
            //onFailure error message from server
            let error = "We encountered error. Try again later"
            onFailure(error)
        }
        
    }
    
}
