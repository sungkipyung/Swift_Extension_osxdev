//
//  Double+.swift
//  Swift_Extension_osxdev
//
//  Created by hothead on 2016. 10. 22..
//  Copyright © 2016년 hothead. All rights reserved.
//

import Foundation

extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}
