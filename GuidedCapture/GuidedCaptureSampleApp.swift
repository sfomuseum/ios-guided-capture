/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
Top-level app structure of the view hierarchy.
*/

import SwiftUI

@main
struct GuidedCaptureSampleApp: App {
    static let subsystem: String = "org.sfomuseum.photogrammetry.guidedcapture"
    
    var body: some Scene {
        WindowGroup {
            if #available(iOS 17.0, *) {
                ContentView()
            }
        }
    }
}
