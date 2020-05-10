//
//  videoParser.swift
//  ProgrammingTask
//
//  Created by Apple on 5/2/20.
//  Copyright © 2020 uaebarq. All rights reserved.
//

import Foundation
import SwiftyJSON

class videoParser{
    
    
    func parsePhotos(fromResponse jsonResponse: JSON) -> [VideosModel] {
        
        
        var videosArr : [VideosModel] = []
        
        for oneVideo in jsonResponse["videos"].arrayValue{
            let videoObj = self.parseOneVideo(fromResponse: oneVideo)
            videosArr.append(videoObj)
        }
        
        return videosArr
    }


    func parseOneVideo(fromResponse jsonResponse: JSON) -> VideosModel {
        
        let video = VideosModel()
        
        if let id = jsonResponse["id"].int {
            video.id = id
        }
     
        if let url = jsonResponse["url"].string {
            video.url = url
        }
        
        if let vimeo_id = jsonResponse["vimeo_id"].string {
            video.vimeo_id = vimeo_id
        }
        
        if let created_at = jsonResponse["created_at"].string {
            video.created_at = created_at
        }
        
        if let updated_at = jsonResponse["updated_at"].string {
            video.updated_at = updated_at
        }
        
        if let category_id = jsonResponse["category_id"].int {
            video.category_id = category_id
        }
        
        if let home_workout = jsonResponse["home_workout"].int {
            video.home_workout = home_workout
        }
        
        if let is_send_notification = jsonResponse["is_send_notification"].string {
            video.is_send_notification = is_send_notification
        }

        if let is_featured = jsonResponse["is_featured"].string {
            video.is_featured = is_featured
        }

        if let archived = jsonResponse["archived"].string {
            video.archived = archived
        }
        
        if let is_free = jsonResponse["is_free"].string {
            video.is_free = is_free
        }

        if let keyword = jsonResponse["keyword"].string {
            video.keyword = keyword
        }

        if let type = jsonResponse["type"].string {
            video.type = type
        }

        if let is_nutrition = jsonResponse["is_nutrition"].int {
            video.is_nutrition = is_nutrition
        }
        
        if let created_by = jsonResponse["created_by"].int {
            video.created_by = created_by
        }
        
        if let lang = jsonResponse["lang"].string {
            video.lang = lang
        }
        
        if let lang_code = jsonResponse["lang_code"].string {
            video.lang_code = lang_code
        }
        
        if let title = jsonResponse["title"].string {
            video.title = title
        }
        
        if let description = jsonResponse["description"].string {
            video.description = description
        }
        
        return video
    }
}
