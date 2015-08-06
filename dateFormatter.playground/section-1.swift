// Playground - noun: a place where people can play

import Foundation
import CoreMedia

var results = NSMutableSet()
var dateFormats = NSMutableSet()

for code in NSLocale.ISOCountryCodes() as [String] {
    let duration = CMTimeGetSeconds(CMTime(value: 15157, timescale: 600, flags: CMTimeFlags.Valid, epoch: 0))
    let locale = NSLocale(localeIdentifier: code)
    locale.localeIdentifier
    
    
    let dateFormatter = NSDateFormatter()
    let dateFormat = NSDateFormatter.dateFormatFromTemplate("ms", options: 0, locale: locale)
    
    dateFormatter.dateFormat = dateFormat
    
    let date = NSDate(timeIntervalSince1970: duration)
    
    let string = dateFormatter.stringFromDate(date)
    results.addObject(string)
    dateFormats.addObject(dateFormat!)
}


results
dateFormats
