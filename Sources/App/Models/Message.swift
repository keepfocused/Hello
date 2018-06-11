//
//  message.swift
//  App
//
//  Created by Danil on 05.06.2018.
//

import Vapor

struct Message: Content {
    var id: UUID?
    var username: String
    var content: String
    var date: Date
}
