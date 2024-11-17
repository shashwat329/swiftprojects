//
//  StringManuplication.swift
//  gpay
//
//  Created by shashwat singh on 16/11/24.
//


import Foundation

func parseUPIString(upiString: String) -> (upiID: String, name: String)? {
    // Remove the first 13 characters
    let trimmedString = String(upiString.dropFirst(13))
    
    // Split the string to get UPI ID and the rest
    guard let upiIDPart = trimmedString.components(separatedBy: "&").first,
          let namePartWithAid = trimmedString.components(separatedBy: "pn=").last else {
        return nil
    }
    
    // Extract name by removing everything after '&'
    let namePart = namePartWithAid.components(separatedBy: "&").first ?? ""
    // Replace %20 with a space to get the full name
    let name = namePart.replacingOccurrences(of: "%20", with: " ")
    
    return (upiIDPart, name)
}
