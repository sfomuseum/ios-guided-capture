/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
State enumeration for the data model type that maintains the state of the app.
*/

import Foundation

extension AppDataModel {
    enum ModelState: String, CustomStringConvertible {
        var description: String { rawValue }

        case notSet
        case ready
        case capturing
        // START OF custom - this is meant to be set in OnboardingButtonView.swift
        // and read in AppDataModel.swift; it does appear to work though...
        case skipReconstruct
        // END OF custom - this is meant to be set in OnboardingButtonView.swift
        case prepareToReconstruct
        case reconstructing
        case viewing
        case completed
        case restart
        case failed
    }
}
