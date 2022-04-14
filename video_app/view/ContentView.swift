//
//  ContentView.swift
//  video_app
//
//  Created by apple on 10/04/22.
//

import SwiftUI


// homeview content
struct ContentView: View {
    @EnvironmentObject  var model:contentmodel
    
    var body: some View {
        NavigationView{
            VStack(alignment:.leading){
                Text("what do you want to do Toady").padding()
        ScrollView{
            
            LazyVStack{
                
                ForEach(model.modules){ i in
                    
                    
                    Uirows(image:i.content.image, category:"learn \(i.category)", description:"\(i.content.description)", lessons:"\(i.content.lessons.count) lessons", time:"\(i.content.time)")
                    
                    
                    
                    Uirows(image:i.test.image, category:"learn \(i.category)", description:"\(i.test.description)", lessons:"\(i.test.questions.count) lessons", time:"\(i.test.time)")
                    
                    
                
               
                    
                    
                
               
                
                
            }
            
            
            
            
        }.padding()
        }
            
            
        
            }.navigationTitle("Get stared")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(contentmodel())
    }
    
}
