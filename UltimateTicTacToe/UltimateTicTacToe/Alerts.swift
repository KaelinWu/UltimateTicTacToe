//
//  Alerts.swift
//  UltimateTicTacToe
//
//  Created by Kaelin Wu on 10/11/23.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    var title: Text
    var message: Text
    var buttonTitle: Text
}

struct AlertContext {
    static let humanWin = AlertItem(title: Text("you win"),
                                    message: Text("You are so smart. You beat your own AI"),
                                    buttonTitle: Text("hell yeah!"))
    
    static let computerWin = AlertItem(title: Text("you lost"),
                                       message: Text("good AI you have there"),
                                       buttonTitle: Text("shit"))
    
    static let draw = AlertItem(title: Text("Draw"),
                                message: Text("almost gottem"),
                                buttonTitle: Text("try again"))
}
