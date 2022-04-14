//
//  Content.swift
//  video_app
//
//  Created by apple on 14/04/22.
//

import Foundation


struct Module:Identifiable,Decodable{
    
    
    var id:Int
    var category:String
    var content:Content
    var test:Test
    
}

struct Content:Identifiable,Decodable{
    
    var id:Int
    var image:String
    var time:String
    var description:String
    var lessons:[Lessons]
    
    
    
}

struct Lessons:Identifiable,Decodable{
    var id:Int
    var title:String
    var video:String
    var duration:String
    var explanation:String
    
    
    }


struct Test:Decodable,Identifiable{
    
    var id:Int
    var image:String
    var time:String
    var questions:[Questions]
    var description:String
    
    
    
    
}

struct Questions:Decodable,Identifiable{
        var id:Int
        var content:String
        var correctIndex:Int
    var answers:[String]
    
        
    }


