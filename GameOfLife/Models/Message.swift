//
//  Message.swift
//  GameOfLife
//
//  Created by Jack Munkonge on 08/11/2019.
//  Copyright © 2019 Solirius. All rights reserved.
//

import Foundation
import CoreGraphics

public enum MessageType: String, Codable {
    case populate = "populate"
    case state = "state"
    case start = "start"
}

class Message: Codable {
    let type: MessageType
    let coordinates: CGPoint?
    let state: [CGPoint]?
    let players: [Player]?
//    let config: 
    
    
    private init(type: MessageType, coordinates: CGPoint?, state: [CGPoint]?, players: [Player]? = nil) {
        self.type = type
        self.coordinates = coordinates
        self.state = state
        self.players = players
    }
    
    public static func populate(withCoordinates coordinates: CGPoint) -> Message {
        return Message(type: .populate, coordinates: coordinates, state: nil)
    }
    
    public static func sendState(of state: [CGPoint]) -> Message {
        return Message(type: .state, coordinates: nil, state: state)
    }
    
//    public static func gameStart(withPlayers players: , withConfig config: ) -> Message {
//        return Message(type: .start, coordinates: nil, state: nil)
//    }
}
