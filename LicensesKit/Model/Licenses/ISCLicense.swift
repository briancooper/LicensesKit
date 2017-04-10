//
//  ISCLicense.swift
//  LicensesKit
//
//  Created by Matthew Wyskiel on 9/29/14.
//  Copyright (c) 2014 Matthew Wyskiel. All rights reserved.
//

import UIKit

/// ISC License
public struct ISCLicense: License {
    
    /// The name of the license
    public var name: String {
        get {
            return "ISC License"
        }
    }
    
    /// The license summary text
    public var summaryText: String {
        get {
            return LicenseContentFetcher.getContent(fromFileNamed: "isc_summary")
        }
    }
    
    /// The license full text
    public var fullText: String {
        get {
            return LicenseContentFetcher.getContent(fromFileNamed: "isc_full")
        }
    }
    
    /// The license version
    public var version: String {
        get {
            return ""
        }
    }
    
    /// The license URL
    public var url: String {
        get {
            return "http://opensource.org/licenses/isc-license.txt"
        }
    }
   
}
