//
//  UIImage+ImageResource.swift
//  R.swift.Library
//
//  Created by Mathijs Kadijk on 11-01-16.
//  Copyright © 2016 Mathijs Kadijk. All rights reserved.
//

import UIKit

public extension UIImage {
  /**
   Returns the image from this resource (R.image.*) that is compatible with the trait collection.

   - parameter resource: The resource you want the image of (R.image.*)
   - parameter traitCollection: Traits that describe the desired image to retrieve, pass nil to use traits that describe the main screen.

   - returns: An image that exactly or best matches the desired traits with the given resource (R.image.*), or nil if no suitable image was found.
  */
  public convenience init?(resource: ImageResourceType, compatibleWithTraitCollection traitCollection: UITraitCollection? = nil) {
    self.init(named: resource.name, inBundle: resource.bundle, compatibleWithTraitCollection: traitCollection)
  }
}
