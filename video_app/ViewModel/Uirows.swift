//
//  Uirows.swift
//  video_app
//
//  Created by apple on 14/04/22.
//

import SwiftUI

struct Uirows: View {
    
    var image:String
    var category:String
    var description:String
    var lessons:String
    var time:String
    
    var body: some View {
        ZStack{
            Rectangle().foregroundColor(.white)
                .cornerRadius(15).shadow(radius:10)
                .aspectRatio(CGSize(width:335, height:175),contentMode:.fit)
            
            HStack{
                
                
                Image(image).resizable()
                    .frame(width:116, height:116).clipShape(Circle())
                
                
                
                Spacer()
                
                VStack(alignment:.leading,spacing:10){
                    Text(category).bold()
                    Text(description).padding(.bottom,20).font(.caption)
                    
                    HStack{
                        
                        Image(systemName:"text.book.closed").resizable()
                            .frame(width: 15, height: 15)
                        Text(lessons).font(.caption)
                        
                        
                            Spacer()
                        
                        Image(systemName:"clock").resizable().frame(width:15, height: 15)
                        Text(time).font(.caption)
                    }
                    
                
                }
            }.padding(.horizontal,20)
            
            
            
        }
        }
        
    }


struct Uirows_Previews: PreviewProvider {
    static var previews: some View {
        Uirows(image:"swift", category:"learn siwft", description:"some description", lessons:"20 lesosns", time:"2hours")
    }
}
