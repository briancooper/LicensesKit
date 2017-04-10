//
//  LicenseResolver.swift
//  LicensesKit
//
//  Created by Matthew Wyskiel on 10/11/14.
//  Copyright (c) 2014 Matthew Wyskiel. All rights reserved.
//

import UIKit

/// Resolves the licenses by given name, used publicly to register custom licenses with the library so they could be resolved by name
public class LicenseResolver {
    
    var licenses: [String : License] = [:]
    
    func registerDefaultLicenses() {
        licenses = [:]
        registerLicense(ApacheSoftwareLicense20())
        registerLicense(BSD3ClauseLicense())
        registerLicense(ISCLicense())
        registerLicense(MITLicense())
        registerLicense(GnuLesserGeneralPublicLicense21())
        registerLicense(CreativeCommonsAttributionNoDerivs30Unported())
        registerLicense(GnuGeneralPublicLicense30())
        registerLicense(GnuGeneralPublicLicense20())
    }
    
    /**
    Registers a given license with the library, so that it can be automatically associated with a notice.
    
    - parameter license: A license to register with the library.
    */
    public func registerLicense(_ license: License) {
        licenses.updateValue(license, forKey: license.name)
    }
    
    init() {
        registerDefaultLicenses()
    }
    
    public static let shared = LicenseResolver()
    
    func license(forName name: String) -> License? {
        return licenses[name]
    }
   
}
