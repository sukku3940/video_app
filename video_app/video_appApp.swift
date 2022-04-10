//
//  video_appApp.swift
//  video_app
//
//  Created by apple on 10/04/22.
//

import SwiftUI

@main
struct video_appApp: App {
    var body: some Scene {
        WindowGroup {
            
            ContentView().environmentObject(content())
        }
    }
}
