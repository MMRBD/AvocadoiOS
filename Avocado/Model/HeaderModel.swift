//
//  HeaderModel.swift
//  Avocado
//
//  Created by Moklesur Rahman on 22/1/22.
//

import Foundation


struct Header: Identifiable {
    let id = UUID()
    let image: String
    let headline: String
    let subHeadline: String
}
