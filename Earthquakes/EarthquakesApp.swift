/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 The app and main window group scene.
 */

import SwiftUI

@main
struct EarthquakesApp: App {
    @StateObject var quakes: QuakesProvider = QuakesProvider()
    
    var body: some Scene {
        WindowGroup {
            Quakes()
                .environmentObject(quakes)
        }
    }
}
