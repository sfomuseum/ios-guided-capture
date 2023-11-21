# io-guided-capture

Implement a full scanning workflow for capturing objects on iOS devices.

## Motivation

This is a fork of Apple's [Scanning objects using Object Capture](https://developer.apple.com/documentation/RealityKit/guided-capture-sample) example application included with WWDC23 session 10191: [Meet Object Capture for iOS](https://developer.apple.com/wwdc23/10191/).

The motivation behind this fork is to use the existing application for scanning objects but to update and add functionality for transferring (scan) data to a MacOS device for rendering higher-quality models.

As of this writing it contains the following changes:

* It adds a `Info.plist` property to enable iTunes file sharing so that scan data can be transferred from an iOS device to a MacOS device.

* It [explicitly disables removing scan data](https://github.com/sfomuseum/ios-guided-capture/blob/main/GuidedCapture/AppDataModel.swift#L327-L333) (images and other associated files) when an object scan is completed or cancelled. It is left to individual users to remove scan data from iOS devices as necessary.

* It adds stub (disabled) code to trigger confirmation dialogues to signal whether on-device rendering should occur and/or whether scan files should be removed. Neither of these things work. This is a SwiftUI application and I am not a SwiftUI person so I am still feeling my way around things. Any pointers would be welcome.

## Configure the sample code project

To run this sample app, you need an iPhone or iPad with the following: 

- A LiDAR Scanner

- An A14 Bionic chip or later

- iOS or iPadOS 17 or later

## See also

* https://github.com/sfomuseum/swift-photogrammetry-render
* https://github.com/sfomuseum/swift-photogrammetry-render-cli