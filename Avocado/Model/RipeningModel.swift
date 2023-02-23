//
//  RipeningModel.swift
//  Avocado
//
//  Created by Moklesur Rahman on 27/3/22.
//

import Foundation


struct Ripening: Identifiable {
    var  id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
