//
//  File.swift
//  video_app
//
//  Created by apple on 10/04/22.
//

import Foundation


class contentmodel:ObservableObject {
    
    
    
    @Published var modules=[Module]()
    var styledata:Data?
    
    
    
    init(){
        
        getlocaldata()
        
    }
    
    func getlocaldata(){
        
        let jsonurl=Bundle.main.url(forResource:"data", withExtension:"json")
        
        do{
        let jsondata=try Data(contentsOf:jsonurl!)
            
            let decoder=JSONDecoder()
            
            let module=try decoder.decode([Module].self, from:jsondata)
            self.modules = module// important to return (module top value)
        }
        
        catch{
            
            print(error)
            
        }
        
        
        let styleurl=Bundle.main.url(forResource:"style", withExtension: "html")
        do{
        let styledata=try Data(contentsOf:styleurl!)
            self.styledata=styledata
        }
        
        catch{
            print(error)
        }
        
        
        
    }
    
    
    
    
    
    
    
}
