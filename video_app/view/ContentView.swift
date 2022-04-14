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
     VStack{
        Text("Hello, world!")
        Text("hello pooja")
         
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
