//
//  InterfaceController.swift
//  TestAccessibilityImageRegion WatchKit Extension
//
//  Created by temporary on 9/20/15.
//  Copyright © 2015 temporary. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
  
  var imageRegion = WKAccessibilityImageRegion()
  
  @IBOutlet var bottomImage: WKInterfaceImage!
  @IBOutlet var topGroup: WKInterfaceGroup!
  
  var screenSize: CGSize {
    return self.contentFrame.size // for convenience
  }
  
  override func willActivate() {
    super.willActivate()
    
    // if WKAccessibilityIsVoiceOverRunning() {
      makeGroupAccessible()
      makeImageAccessible()
    // }
  }
  
  func makeGroupAccessible() {
    let regions = imageRegions("Hello from a group")
    topGroup.setAccessibilityImageRegions(regions)
  }
  
  func makeImageAccessible() {
    let regions = imageRegions("Howdy from an image")
    bottomImage.setAccessibilityImageRegions(regions)
  }
  
  func imageRegions(message: String) -> [WKAccessibilityImageRegion] {
    let height = screenSize.height / 2
    let width = screenSize.width / 2
    let frame1 = CGRect(x: 0, y: 0, width: width, height: height)
    let frame2 = CGRect(x: width, y: 0, width: width, height: height)
    let region1 = WKAccessibilityImageRegion()
    region1.frame = frame1
    region1.label = "\(message) Region 1"
    let region2 = WKAccessibilityImageRegion()
    region2.frame = frame2
    region2.label = "\(message) Region 2"
    return [region1, region2]
  }
  
}
