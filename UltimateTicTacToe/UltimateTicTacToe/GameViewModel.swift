//
//  GameViewModel.swift
//  UltimateTicTacToe
//
//  Created by Kaelin Wu on 10/11/23.
//

import Foundation
import SwiftUI

final class GameViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),]
    
    let columns2: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),]
    
    
    @Published var moves0: [Move0?] = Array(repeating: nil, count: 9)
    @Published var moves1: [Move1?] = Array(repeating: nil, count: 9)
    @Published var moves2: [Move2?] = Array(repeating: nil, count: 9)
    @Published var moves3: [Move3?] = Array(repeating: nil, count: 9)
    @Published var moves4: [Move4?] = Array(repeating: nil, count: 9)
    @Published var moves5: [Move5?] = Array(repeating: nil, count: 9)
    @Published var moves6: [Move6?] = Array(repeating: nil, count: 9)
    @Published var moves7: [Move7?] = Array(repeating: nil, count: 9)
    @Published var moves8: [Move8?] = Array(repeating: nil, count: 9)
    
    var reset:Int = 0
    //determines which box the comupter will play in next
    var ComputerNewBox:Int?
    //determines which box the player will play in
    var PlayerNewBox:Int?
    
    //@Published var isHumansTurn = true
    @Published var isGameboardDisabled = false
    @Published var isGameboardDisabled0 = false
    @Published var isGameboardDisabled1 = false
    @Published var isGameboardDisabled2 = false
    @Published var isGameboardDisabled3 = false
    @Published var isGameboardDisabled4 = false
    @Published var isGameboardDisabled5 = false
    @Published var isGameboardDisabled6 = false
    @Published var isGameboardDisabled7 = false
    @Published var isGameboardDisabled8 = false
    @Published var alertItem: AlertItem?
    
    func processPlayerGameBoard()
    {
        if PlayerNewBox == 0{
            isGameboardDisabled0 = false
        }
        else if PlayerNewBox == 1{
            isGameboardDisabled1 = false
        }
        else if PlayerNewBox == 2{
            isGameboardDisabled2 = false
        }
        else if PlayerNewBox == 3{
            isGameboardDisabled3 = false
        }
        else if PlayerNewBox == 4{
            isGameboardDisabled4 = false
        }
        else if PlayerNewBox == 5{
            isGameboardDisabled5 = false
        }
        else if PlayerNewBox == 6{
            isGameboardDisabled6 = false
        }
        else if PlayerNewBox == 7{
            isGameboardDisabled7 = false
        }
        else if PlayerNewBox == 8{
            isGameboardDisabled8 = false
        }
    }
    func DisableGameBoards(){
        if isGameboardDisabled == true {
            isGameboardDisabled0 = true
            isGameboardDisabled1 = true
            isGameboardDisabled2 = true
            isGameboardDisabled3 = true
            isGameboardDisabled4 = true
            isGameboardDisabled5 = true
            isGameboardDisabled6 = true
            isGameboardDisabled7 = true
            isGameboardDisabled8 = true
        }
        
    }
    
    func processComputerMoveFinal(){
        
        if ComputerNewBox == 0{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            { [self] in
                let computerPosition = determineComputerMovePosition(in: moves0)
                moves0[computerPosition] = Move0(player: .computer, boardIndex: computerPosition)
                PlayerNewBox = computerPosition
                
                processPlayerGameBoard()
                
                
                if checkWinCondition(for: .computer, in: moves0){
                    alertItem = AlertContext.computerWin
                    reset = 0
                    return
                    
                }
                if checkForDraw(in: moves0) {
                    alertItem = AlertContext.draw
                    reset = 0
                    return
                    
                }
            }
        }
        else if ComputerNewBox == 1{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            { [self] in
                let computerPosition = determineComputerMovePosition(in: moves1)
                moves1[computerPosition] = Move1(player1: .computer1, boardIndex1: computerPosition)
                PlayerNewBox = computerPosition
                
                processPlayerGameBoard()
                
                if checkWinCondition(for: .computer1, in: moves1){
                    alertItem = AlertContext.computerWin
                    reset = 1
                    return
                    
                }
                if checkForDraw(in: moves1) {
                    alertItem = AlertContext.draw
                    reset = 1
                    return
                    
                }
            }
        }
        else if ComputerNewBox == 2{
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            { [self] in
                let computerPosition = determineComputerMovePosition(in: moves2)
                moves2[computerPosition] = Move2(player2: .computer2, boardIndex2: computerPosition)
                PlayerNewBox = computerPosition
                
                processPlayerGameBoard()
                
                if checkWinCondition(for: .computer2, in: moves2){
                    alertItem = AlertContext.computerWin
                    reset = 2
                    return
                    
                }
                if checkForDraw(in: moves2) {
                    alertItem = AlertContext.draw
                    reset = 2
                    return
                    
                }
            }
        }
        else if ComputerNewBox == 3{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            { [self] in
                let computerPosition = determineComputerMovePosition(in: moves3)
                moves3[computerPosition] = Move3(player3: .computer3, boardIndex3: computerPosition)
                PlayerNewBox = computerPosition
                
                processPlayerGameBoard()
                
                if checkWinCondition(for: .computer3, in: moves3){
                    alertItem = AlertContext.computerWin
                    reset = 3
                    return
                    
                }
                if checkForDraw(in: moves3) {
                    alertItem = AlertContext.draw
                    reset = 3
                    return
                    
                }
            }
        }
        else if ComputerNewBox == 4{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            { [self] in
                let computerPosition = determineComputerMovePosition(in: moves4)
                moves4[computerPosition] = Move4(player4: .computer4, boardIndex4: computerPosition)
                PlayerNewBox = computerPosition
                
                processPlayerGameBoard()
                
                if checkWinCondition(for: .computer4, in: moves4){
                    alertItem = AlertContext.computerWin
                    reset = 4
                    return
                    
                }
                if checkForDraw(in: moves4) {
                    alertItem = AlertContext.draw
                    reset = 4
                    return
                    
                }
            }
        }
        else if ComputerNewBox == 5{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            { [self] in
                let computerPosition = determineComputerMovePosition(in: moves5)
                moves5[computerPosition] = Move5(player5: .computer5, boardIndex5: computerPosition)
                PlayerNewBox = computerPosition
                
                processPlayerGameBoard()
                
                if checkWinCondition(for: .computer5, in: moves5){
                    alertItem = AlertContext.computerWin
                    reset = 5
                    return
                    
                }
                if checkForDraw(in: moves5) {
                    alertItem = AlertContext.draw
                    reset = 5
                    return
                    
                }
            }
        }
        else if ComputerNewBox == 6{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            { [self] in
                let computerPosition = determineComputerMovePosition(in: moves6)
                moves6[computerPosition] = Move6(player6: .computer6, boardIndex6: computerPosition)
                PlayerNewBox = computerPosition
                
                processPlayerGameBoard()
                
                if checkWinCondition(for: .computer6, in: moves6){
                    alertItem = AlertContext.computerWin
                    reset = 6
                    return
                    
                }
                if checkForDraw(in: moves6) {
                    alertItem = AlertContext.draw
                    reset = 6
                    return
                    
                }
            }
        }
        else if ComputerNewBox == 7{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            { [self] in
                let computerPosition = determineComputerMovePosition(in: moves7)
                moves7[computerPosition] = Move7(player7: .computer7, boardIndex7: computerPosition)
                PlayerNewBox = computerPosition
                
                processPlayerGameBoard()
                
                if checkWinCondition(for: .computer7, in: moves7){
                    alertItem = AlertContext.computerWin
                    reset = 7
                    return
                    
                }
                if checkForDraw(in: moves7) {
                    alertItem = AlertContext.draw
                    reset = 7
                    return
                    
                }
            }
        }
        else if ComputerNewBox == 8{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            { [self] in
                let computerPosition = determineComputerMovePosition(in: moves8)
                moves8[computerPosition] = Move8(player8: .computer8, boardIndex8: computerPosition)
                PlayerNewBox = computerPosition
                
                processPlayerGameBoard()
                
                if checkWinCondition(for: .computer8, in: moves8){
                    alertItem = AlertContext.computerWin
                    reset = 8
                    return
                    
                }
                if checkForDraw(in: moves8) {
                    alertItem = AlertContext.draw
                    reset = 8
                    return
                    
                }
            }
        }
    }
    func processPlayerMove(for position: Int){
        if isSquareOccupied(in: moves0, forIndex: position) { return}
        //this is for when two humans are playing
        //                            moves[i] = Move(player: isHumansTurn ? .human : .computer, boardIndex: i)
        //                            isHumansTurn.toggle()
        
        //this will be for when playing a computer
        
        moves0[position] = Move0(player: .human, boardIndex: position)
        ComputerNewBox = position
        
        if checkWinCondition(for: .human, in: moves0){
            alertItem = AlertContext.humanWin
            reset = 0
            
            return
            
        }
        if checkForDraw(in: moves0) {
            alertItem = AlertContext.draw
            reset = 0
            return
        }
        isGameboardDisabled = true
        DisableGameBoards()
        //computer turn
        processComputerMoveFinal()
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
//        { [self] in
//            let computerPosition = determineComputerMovePosition(in: moves0)
//            moves0[computerPosition] = Move0(player: .computer, boardIndex: computerPosition)
//            isGameboardDisabled = false
//            
//            if checkWinCondition(for: .computer, in: moves0){
//                alertItem = AlertContext.computerWin
//                reset = 0
//                return
//                
//            }
//            if checkForDraw(in: moves0) {
//                alertItem = AlertContext.draw
//                reset = 0
//                return
//                
//            }
//        }
        
//
            
        
    }
   
    func isSquareOccupied(in moves0: [Move0?], forIndex index: Int) -> Bool{
        return moves0.contains(where: { $0?.boardIndex == index})
    }
    
    //Computer Ai
    func determineComputerMovePosition(in moves0: [Move0?]) -> Int
    {
        
        //If AI can win, then win
        let winPatterns: Set<Set<Int>> = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        
        let computerMoves = moves0.compactMap { $0 }.filter { $0.player == .computer }
        let computerPositions = Set(computerMoves.map { $0.boardIndex })
        
        for pattern in winPatterns{
            let winPositions = pattern.subtracting(computerPositions)
            
            if winPositions.count == 1{
                let isAvailiable = !isSquareOccupied(in: moves0, forIndex: winPositions.first!)
                if isAvailiable { return winPositions.first! }
            }
        }
        //if Ai cant win, then block
        let humanMoves = moves0.compactMap { $0 }.filter { $0.player == .human }
        let humanPositions = Set(humanMoves.map { $0.boardIndex })
        
        for pattern in winPatterns{
            let winPositions = pattern.subtracting(humanPositions)
            
            if winPositions.count == 1{
                let isAvailiable = !isSquareOccupied(in: moves0, forIndex: winPositions.first!)
                if isAvailiable { return winPositions.first! }
            }
        }
        //if AI cant block, then take middle square
        let centerSquare = 4
        if !isSquareOccupied(in: moves0, forIndex: centerSquare){
            return centerSquare
        }
        //if AI cant take middle square, take random avaliable square
        var movePosition = Int.random(in: 0..<9)
        
        while isSquareOccupied(in: moves0, forIndex: movePosition){
            movePosition = Int.random(in: 0..<9)
        }
        return movePosition
    }
    
    func checkWinCondition(for player: Player, in moves0: [Move0?]) -> Bool {
        let winPatterns: Set<Set<Int>> = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        
        let playerMoves = moves0.compactMap { $0 }.filter { $0.player == player }
        let playerPositions = Set(playerMoves.map { $0.boardIndex })
        
        for pattern in winPatterns where pattern.isSubset(of: playerPositions) {
            
            return true
            
        }
        
        return false
    }
    
    func checkForDraw(in moves0: [Move0?]) -> Bool {
        return moves0.compactMap { $0 }.count == 9
    }
    
        
    // for move1
    func processPlayerMove1(for position: Int){
        if isSquareOccupied(in: moves1, forIndex: position) { return}
        //this is for when two humans are playing
        //                            moves[i] = Move(player: isHumansTurn ? .human : .computer, boardIndex: i)
        //                            isHumansTurn.toggle()
        
        //this will be for when playing a computer
        
        moves1[position] = Move1(player1: .human1, boardIndex1: position)
        ComputerNewBox = position
        
        if checkWinCondition(for: .human1, in: moves1){
            alertItem = AlertContext.humanWin
            reset = 1
            return
            
        }
        if checkForDraw(in: moves1) {
            alertItem = AlertContext.draw
            reset = 1
            return
        }
        isGameboardDisabled = true
        DisableGameBoards()
        //computer turn
        processComputerMoveFinal()
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
//        { [self] in
//            let computerPosition = determineComputerMovePosition(in: moves1)
//            moves1[computerPosition] = Move1(player1: .computer1, boardIndex1: computerPosition)
//            isGameboardDisabled = false
//            
//            if checkWinCondition(for: .computer1, in: moves1){
//                alertItem = AlertContext.computerWin
//                reset = 1
//                return
//                
//            }
//            if checkForDraw(in: moves1) {
//                alertItem = AlertContext.draw
//                reset = 1
//                return
//                
//            }
//        }
    }
   
    func isSquareOccupied(in moves1: [Move1?], forIndex index: Int) -> Bool{
        return moves1.contains(where: { $0?.boardIndex1 == index})
    }
    
    //Computer Ai
    func determineComputerMovePosition(in moves1: [Move1?]) -> Int
    {
        
        //If AI can win, then win
        let winPatterns: Set<Set<Int>> = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        
        let computerMoves = moves1.compactMap { $0 }.filter { $0.player1 == .computer1 }
        let computerPositions = Set(computerMoves.map { $0.boardIndex1 })
        
        for pattern in winPatterns{
            let winPositions = pattern.subtracting(computerPositions)
            
            if winPositions.count == 1{
                let isAvailiable = !isSquareOccupied(in: moves1, forIndex: winPositions.first!)
                if isAvailiable { return winPositions.first! }
            }
        }
        //if Ai cant win, then block
        let humanMoves = moves1.compactMap { $0 }.filter { $0.player1 == .human1 }
        let humanPositions = Set(humanMoves.map { $0.boardIndex1 })
        
        for pattern in winPatterns{
            let winPositions = pattern.subtracting(humanPositions)
            
            if winPositions.count == 1{
                let isAvailiable = !isSquareOccupied(in: moves1, forIndex: winPositions.first!)
                if isAvailiable { return winPositions.first! }
            }
        }
        //if AI cant block, then take middle square
        let centerSquare = 4
        if !isSquareOccupied(in: moves1, forIndex: centerSquare){
            return centerSquare
        }
        //if AI cant take middle square, take random avaliable square
        var movePosition = Int.random(in: 0..<9)
        
        while isSquareOccupied(in: moves1, forIndex: movePosition){
            movePosition = Int.random(in: 0..<9)
        }
        return movePosition
    }
    
    func checkWinCondition(for player1: Player1, in moves1: [Move1?]) -> Bool {
        let winPatterns: Set<Set<Int>> = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        
        let playerMoves = moves1.compactMap { $0 }.filter { $0.player1 == player1 }
        let playerPositions = Set(playerMoves.map { $0.boardIndex1 })
        
        for pattern in winPatterns where pattern.isSubset(of: playerPositions) {
            return true
        }
        
        return false
    }
    
    func checkForDraw(in moves1: [Move1?]) -> Bool {
        return moves1.compactMap { $0 }.count == 9
    }
    
    func resetGame1() {
      moves1 = Array(repeating: nil, count: 9)
    }
    
    // for move2
    func processPlayerMove2(for position: Int){
        if isSquareOccupied(in: moves2, forIndex: position) { return}
        //this is for when two humans are playing
        //                            moves[i] = Move(player: isHumansTurn ? .human : .computer, boardIndex: i)
        //                            isHumansTurn.toggle()
        
        //this will be for when playing a computer
        
        moves2[position] = Move2(player2: .human2, boardIndex2: position)
        ComputerNewBox = position
        
        if checkWinCondition(for: .human2, in: moves2){
            alertItem = AlertContext.humanWin
            reset = 2
            return
            
        }
        if checkForDraw(in: moves2) {
            alertItem = AlertContext.draw
            reset = 2
            return
        }
        isGameboardDisabled = true
        DisableGameBoards()
        //computer turn
        processComputerMoveFinal()
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
//        { [self] in
//            let computerPosition = determineComputerMovePosition(in: moves2)
//            moves2[computerPosition] = Move2(player2: .computer2, boardIndex2: computerPosition)
//            isGameboardDisabled = false
//            
//            if checkWinCondition(for: .computer2, in: moves2){
//                alertItem = AlertContext.computerWin
//                reset = 2
//                return
//                
//            }
//            if checkForDraw(in: moves2) {
//                alertItem = AlertContext.draw
//                reset = 2
//                return
//                
//            }
//        }
    }
   
    func isSquareOccupied(in moves2: [Move2?], forIndex index: Int) -> Bool{
        return moves2.contains(where: { $0?.boardIndex2 == index})
    }
    
    //Computer Ai
    func determineComputerMovePosition(in moves2: [Move2?]) -> Int
    {
        
        //If AI can win, then win
        let winPatterns: Set<Set<Int>> = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        
        let computerMoves = moves2.compactMap { $0 }.filter { $0.player2 == .computer2 }
        let computerPositions = Set(computerMoves.map { $0.boardIndex2 })
        
        for pattern in winPatterns{
            let winPositions = pattern.subtracting(computerPositions)
            
            if winPositions.count == 1{
                let isAvailiable = !isSquareOccupied(in: moves2, forIndex: winPositions.first!)
                if isAvailiable { return winPositions.first! }
            }
        }
        //if Ai cant win, then block
        let humanMoves = moves2.compactMap { $0 }.filter { $0.player2 == .human2 }
        let humanPositions = Set(humanMoves.map { $0.boardIndex2 })
        
        for pattern in winPatterns{
            let winPositions = pattern.subtracting(humanPositions)
            
            if winPositions.count == 1{
                let isAvailiable = !isSquareOccupied(in: moves2, forIndex: winPositions.first!)
                if isAvailiable { return winPositions.first! }
            }
        }
        //if AI cant block, then take middle square
        let centerSquare = 4
        if !isSquareOccupied(in: moves2, forIndex: centerSquare){
            return centerSquare
        }
        //if AI cant take middle square, take random avaliable square
        var movePosition = Int.random(in: 0..<9)
        
        while isSquareOccupied(in: moves2, forIndex: movePosition){
            movePosition = Int.random(in: 0..<9)
        }
        return movePosition
    }
    
    func checkWinCondition(for player2: Player2, in moves2: [Move2?]) -> Bool {
        let winPatterns: Set<Set<Int>> = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        
        let playerMoves = moves2.compactMap { $0 }.filter { $0.player2 == player2 }
        let playerPositions = Set(playerMoves.map { $0.boardIndex2 })
        
        for pattern in winPatterns where pattern.isSubset(of: playerPositions) {
            return true
        }
        
        return false
    }
    
    func checkForDraw(in moves2: [Move2?]) -> Bool {
        return moves2.compactMap { $0 }.count == 9
    }
    
    func resetGame2() {
      moves2 = Array(repeating: nil, count: 9)
    }
    
    
    
    // for move3
    func processPlayerMove3(for position: Int){
        if isSquareOccupied(in: moves3, forIndex: position) { return}
        //this is for when two humans are playing
        //                            moves[i] = Move(player: isHumansTurn ? .human : .computer, boardIndex: i)
        //                            isHumansTurn.toggle()
        
        //this will be for when playing a computer
        
        moves3[position] = Move3(player3: .human3, boardIndex3: position)
        ComputerNewBox = position
        
        if checkWinCondition(for: .human3, in: moves3){
            alertItem = AlertContext.humanWin
            reset = 3
            return
            
        }
        if checkForDraw(in: moves3) {
            alertItem = AlertContext.draw
            reset = 3
            return
        }
        isGameboardDisabled = true
        DisableGameBoards()
        //computer turn
        processComputerMoveFinal()
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
//        { [self] in
//            let computerPosition = determineComputerMovePosition(in: moves3)
//            moves3[computerPosition] = Move3(player3: .computer3, boardIndex3: computerPosition)
//            isGameboardDisabled = false
//            
//            if checkWinCondition(for: .computer3, in: moves3){
//                alertItem = AlertContext.computerWin
//                reset = 3
//                return
//                
//            }
//            if checkForDraw(in: moves3) {
//                alertItem = AlertContext.draw
//                reset = 3
//                return
//                
//            }
//        }
    }
   
    func isSquareOccupied(in moves3: [Move3?], forIndex index: Int) -> Bool{
        return moves3.contains(where: { $0?.boardIndex3 == index})
    }
    
    //Computer Ai
    func determineComputerMovePosition(in moves3: [Move3?]) -> Int
    {
        
        //If AI can win, then win
        let winPatterns: Set<Set<Int>> = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        
        let computerMoves = moves3.compactMap { $0 }.filter { $0.player3 == .computer3 }
        let computerPositions = Set(computerMoves.map { $0.boardIndex3 })
        
        for pattern in winPatterns{
            let winPositions = pattern.subtracting(computerPositions)
            
            if winPositions.count == 1{
                let isAvailiable = !isSquareOccupied(in: moves3, forIndex: winPositions.first!)
                if isAvailiable { return winPositions.first! }
            }
        }
        //if Ai cant win, then block
        let humanMoves = moves3.compactMap { $0 }.filter { $0.player3 == .human3 }
        let humanPositions = Set(humanMoves.map { $0.boardIndex3 })
        
        for pattern in winPatterns{
            let winPositions = pattern.subtracting(humanPositions)
            
            if winPositions.count == 1{
                let isAvailiable = !isSquareOccupied(in: moves3, forIndex: winPositions.first!)
                if isAvailiable { return winPositions.first! }
            }
        }
        //if AI cant block, then take middle square
        let centerSquare = 4
        if !isSquareOccupied(in: moves3, forIndex: centerSquare){
            return centerSquare
        }
        //if AI cant take middle square, take random avaliable square
        var movePosition = Int.random(in: 0..<9)
        
        while isSquareOccupied(in: moves3, forIndex: movePosition){
            movePosition = Int.random(in: 0..<9)
        }
        return movePosition
    }
    
    func checkWinCondition(for player3: Player3, in moves3: [Move3?]) -> Bool {
        let winPatterns: Set<Set<Int>> = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        
        let playerMoves = moves3.compactMap { $0 }.filter { $0.player3 == player3 }
        let playerPositions = Set(playerMoves.map { $0.boardIndex3 })
        
        for pattern in winPatterns where pattern.isSubset(of: playerPositions) {
            return true
        }
        
        return false
    }
    
    func checkForDraw(in moves3: [Move3?]) -> Bool {
        return moves3.compactMap { $0 }.count == 9
    }
    
    func resetGame3() {
      moves3 = Array(repeating: nil, count: 9)
    }
   
   
    // for move4
    func processPlayerMove4(for position: Int){
        if isSquareOccupied(in: moves4, forIndex: position) { return}
        //this is for when two humans are playing
        //                            moves[i] = Move(player: isHumansTurn ? .human : .computer, boardIndex: i)
        //                            isHumansTurn.toggle()
        
        //this will be for when playing a computer
        
        moves4[position] = Move4(player4: .human4, boardIndex4: position)
        ComputerNewBox = position
        
        if checkWinCondition(for: .human4, in: moves4){
            alertItem = AlertContext.humanWin
            reset = 4
            return
            
        }
        if checkForDraw(in: moves4) {
            alertItem = AlertContext.draw
            reset = 4
            return
        }
        isGameboardDisabled = true
        DisableGameBoards()
        //computer turn
        processComputerMoveFinal()
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
//        { [self] in
//            let computerPosition = determineComputerMovePosition(in: moves4)
//            moves4[computerPosition] = Move4(player4: .computer4, boardIndex4: computerPosition)
//            isGameboardDisabled = false
//            
//            if checkWinCondition(for: .computer4, in: moves4){
//                alertItem = AlertContext.computerWin
//                reset = 4
//                return
//                
//            }
//            if checkForDraw(in: moves4) {
//                alertItem = AlertContext.draw
//                reset = 4
//                return
//                
//            }
//        }
    }
   
    func isSquareOccupied(in moves4: [Move4?], forIndex index: Int) -> Bool{
        return moves4.contains(where: { $0?.boardIndex4 == index})
    }
    
    //Computer Ai
    func determineComputerMovePosition(in moves4: [Move4?]) -> Int
    {
        
        //If AI can win, then win
        let winPatterns: Set<Set<Int>> = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        
        let computerMoves = moves4.compactMap { $0 }.filter { $0.player4 == .computer4 }
        let computerPositions = Set(computerMoves.map { $0.boardIndex4 })
        
        for pattern in winPatterns{
            let winPositions = pattern.subtracting(computerPositions)
            
            if winPositions.count == 1{
                let isAvailiable = !isSquareOccupied(in: moves4, forIndex: winPositions.first!)
                if isAvailiable { return winPositions.first! }
            }
        }
        //if Ai cant win, then block
        let humanMoves = moves4.compactMap { $0 }.filter { $0.player4 == .human4 }
        let humanPositions = Set(humanMoves.map { $0.boardIndex4 })
        
        for pattern in winPatterns{
            let winPositions = pattern.subtracting(humanPositions)
            
            if winPositions.count == 1{
                let isAvailiable = !isSquareOccupied(in: moves4, forIndex: winPositions.first!)
                if isAvailiable { return winPositions.first! }
            }
        }
        //if AI cant block, then take middle square
        let centerSquare = 4
        if !isSquareOccupied(in: moves4, forIndex: centerSquare){
            return centerSquare
        }
        //if AI cant take middle square, take random avaliable square
        var movePosition = Int.random(in: 0..<9)
        
        while isSquareOccupied(in: moves4, forIndex: movePosition){
            movePosition = Int.random(in: 0..<9)
        }
        return movePosition
    }
    
    func checkWinCondition(for player4: Player4, in moves4: [Move4?]) -> Bool {
        let winPatterns: Set<Set<Int>> = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        
        let playerMoves = moves4.compactMap { $0 }.filter { $0.player4 == player4 }
        let playerPositions = Set(playerMoves.map { $0.boardIndex4 })
        
        for pattern in winPatterns where pattern.isSubset(of: playerPositions) {
            return true
        }
        
        return false
    }
    
    func checkForDraw(in moves4: [Move4?]) -> Bool {
        return moves4.compactMap { $0 }.count == 9
    }
    
    func resetGame4() {
      moves4 = Array(repeating: nil, count: 9)
    }
   
    
    // for move5
    func processPlayerMove5(for position: Int){
        if isSquareOccupied(in: moves5, forIndex: position) { return}
        //this is for when two humans are playing
        //                            moves[i] = Move(player: isHumansTurn ? .human : .computer, boardIndex: i)
        //                            isHumansTurn.toggle()
        
        //this will be for when playing a computer
        
        moves5[position] = Move5(player5: .human5, boardIndex5: position)
        ComputerNewBox = position
        
        if checkWinCondition(for: .human5, in: moves5){
            alertItem = AlertContext.humanWin
            reset = 5
            return
            
        }
        if checkForDraw(in: moves5) {
            alertItem = AlertContext.draw
            reset = 5
            return
        }
        isGameboardDisabled = true
        DisableGameBoards()
        //computer turn
        processComputerMoveFinal()
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
//        { [self] in
//            let computerPosition = determineComputerMovePosition(in: moves5)
//            moves5[computerPosition] = Move5(player5: .computer5, boardIndex5: computerPosition)
//            isGameboardDisabled = false
//            
//            if checkWinCondition(for: .computer5, in: moves5){
//                alertItem = AlertContext.computerWin
//                reset = 5
//                return
//                
//            }
//            if checkForDraw(in: moves5) {
//                alertItem = AlertContext.draw
//                reset = 5
//                return
//                
//            }
//        }
    }
   
    func isSquareOccupied(in moves5: [Move5?], forIndex index: Int) -> Bool{
        return moves5.contains(where: { $0?.boardIndex5 == index})
    }
    
    //Computer Ai
    func determineComputerMovePosition(in moves5: [Move5?]) -> Int
    {
        
        //If AI can win, then win
        let winPatterns: Set<Set<Int>> = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        
        let computerMoves = moves5.compactMap { $0 }.filter { $0.player5 == .computer5 }
        let computerPositions = Set(computerMoves.map { $0.boardIndex5 })
        
        for pattern in winPatterns{
            let winPositions = pattern.subtracting(computerPositions)
            
            if winPositions.count == 1{
                let isAvailiable = !isSquareOccupied(in: moves5, forIndex: winPositions.first!)
                if isAvailiable { return winPositions.first! }
            }
        }
        //if Ai cant win, then block
        let humanMoves = moves5.compactMap { $0 }.filter { $0.player5 == .human5 }
        let humanPositions = Set(humanMoves.map { $0.boardIndex5 })
        
        for pattern in winPatterns{
            let winPositions = pattern.subtracting(humanPositions)
            
            if winPositions.count == 1{
                let isAvailiable = !isSquareOccupied(in: moves5, forIndex: winPositions.first!)
                if isAvailiable { return winPositions.first! }
            }
        }
        //if AI cant block, then take middle square
        let centerSquare = 4
        if !isSquareOccupied(in: moves5, forIndex: centerSquare){
            return centerSquare
        }
        //if AI cant take middle square, take random avaliable square
        var movePosition = Int.random(in: 0..<9)
        
        while isSquareOccupied(in: moves5, forIndex: movePosition){
            movePosition = Int.random(in: 0..<9)
        }
        return movePosition
    }
    
    func checkWinCondition(for player5: Player5, in moves5: [Move5?]) -> Bool {
        let winPatterns: Set<Set<Int>> = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        
        let playerMoves = moves5.compactMap { $0 }.filter { $0.player5 == player5 }
        let playerPositions = Set(playerMoves.map { $0.boardIndex5 })
        
        for pattern in winPatterns where pattern.isSubset(of: playerPositions) {
            return true
        }
        
        return false
    }
    
    func checkForDraw(in moves5: [Move5?]) -> Bool {
        return moves5.compactMap { $0 }.count == 9
    }
    
    func resetGame5() {
      moves5 = Array(repeating: nil, count: 9)
    }
   
    
    
    
    // for move6
    func processPlayerMove6(for position: Int){
        if isSquareOccupied(in: moves6, forIndex: position) { return}
        //this is for when two humans are playing
        //                            moves[i] = Move(player: isHumansTurn ? .human : .computer, boardIndex: i)
        //                            isHumansTurn.toggle()
        
        //this will be for when playing a computer
        
        moves6[position] = Move6(player6: .human6, boardIndex6: position)
        ComputerNewBox = position
        
        if checkWinCondition(for: .human6, in: moves6){
            alertItem = AlertContext.humanWin
            reset = 6
            return
            
        }
        if checkForDraw(in: moves6) {
            alertItem = AlertContext.draw
            reset = 6
            return
        }
        isGameboardDisabled = true
        DisableGameBoards()
        //computer turn
        processComputerMoveFinal()
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
//        { [self] in
//            let computerPosition = determineComputerMovePosition(in: moves6)
//            moves6[computerPosition] = Move6(player6: .computer6, boardIndex6: computerPosition)
//            isGameboardDisabled = false
//            
//            if checkWinCondition(for: .computer6, in: moves6){
//                alertItem = AlertContext.computerWin
//                reset = 6
//                return
//                
//            }
//            if checkForDraw(in: moves6) {
//                alertItem = AlertContext.draw
//                reset = 6
//                return
//                
//            }
//        }
    }
   
    func isSquareOccupied(in moves6: [Move6?], forIndex index: Int) -> Bool{
        return moves6.contains(where: { $0?.boardIndex6 == index})
    }
    
    //Computer Ai
    func determineComputerMovePosition(in moves6: [Move6?]) -> Int
    {
        
        //If AI can win, then win
        let winPatterns: Set<Set<Int>> = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        
        let computerMoves = moves6.compactMap { $0 }.filter { $0.player6 == .computer6 }
        let computerPositions = Set(computerMoves.map { $0.boardIndex6 })
        
        for pattern in winPatterns{
            let winPositions = pattern.subtracting(computerPositions)
            
            if winPositions.count == 1{
                let isAvailiable = !isSquareOccupied(in: moves6, forIndex: winPositions.first!)
                if isAvailiable { return winPositions.first! }
            }
        }
        //if Ai cant win, then block
        let humanMoves = moves6.compactMap { $0 }.filter { $0.player6 == .human6 }
        let humanPositions = Set(humanMoves.map { $0.boardIndex6 })
        
        for pattern in winPatterns{
            let winPositions = pattern.subtracting(humanPositions)
            
            if winPositions.count == 1{
                let isAvailiable = !isSquareOccupied(in: moves6, forIndex: winPositions.first!)
                if isAvailiable { return winPositions.first! }
            }
        }
        //if AI cant block, then take middle square
        let centerSquare = 4
        if !isSquareOccupied(in: moves6, forIndex: centerSquare){
            return centerSquare
        }
        //if AI cant take middle square, take random avaliable square
        var movePosition = Int.random(in: 0..<9)
        
        while isSquareOccupied(in: moves6, forIndex: movePosition){
            movePosition = Int.random(in: 0..<9)
        }
        return movePosition
    }
    
    func checkWinCondition(for player6: Player6, in moves6: [Move6?]) -> Bool {
        let winPatterns: Set<Set<Int>> = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        
        let playerMoves = moves6.compactMap { $0 }.filter { $0.player6 == player6 }
        let playerPositions = Set(playerMoves.map { $0.boardIndex6 })
        
        for pattern in winPatterns where pattern.isSubset(of: playerPositions) {
            return true
        }
        
        return false
    }
    
    func checkForDraw(in moves6: [Move6?]) -> Bool {
        return moves6.compactMap { $0 }.count == 9
    }
    
    func resetGame6() {
      moves6 = Array(repeating: nil, count: 9)
    }
   
    
    
    
    // for move7
    func processPlayerMove7(for position: Int){
        if isSquareOccupied(in: moves7, forIndex: position) { return}
        //this is for when two humans are playing
        //                            moves[i] = Move(player: isHumansTurn ? .human : .computer, boardIndex: i)
        //                            isHumansTurn.toggle()
        
        //this will be for when playing a computer
        
        moves7[position] = Move7(player7: .human7, boardIndex7: position)
        ComputerNewBox = position
        
        if checkWinCondition(for: .human7, in: moves7){
            alertItem = AlertContext.humanWin
            reset = 7
            return
            
        }
        if checkForDraw(in: moves7) {
            alertItem = AlertContext.draw
            reset = 7
            return
        }
        isGameboardDisabled = true
        DisableGameBoards()
        //computer turn
        processComputerMoveFinal()
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
//        { [self] in
//            let computerPosition = determineComputerMovePosition(in: moves7)
//            moves7[computerPosition] = Move7(player7: .computer7, boardIndex7: computerPosition)
//            isGameboardDisabled = false
//            
//            if checkWinCondition(for: .computer7, in: moves7){
//                alertItem = AlertContext.computerWin
//                reset = 7
//                return
//                
//            }
//            if checkForDraw(in: moves7) {
//                alertItem = AlertContext.draw
//                reset = 7
//                return
//                
//            }
//        }
    }
   
    func isSquareOccupied(in moves7: [Move7?], forIndex index: Int) -> Bool{
        return moves7.contains(where: { $0?.boardIndex7 == index})
    }
    
    //Computer Ai
    func determineComputerMovePosition(in moves7: [Move7?]) -> Int
    {
        
        //If AI can win, then win
        let winPatterns: Set<Set<Int>> = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        
        let computerMoves = moves7.compactMap { $0 }.filter { $0.player7 == .computer7 }
        let computerPositions = Set(computerMoves.map { $0.boardIndex7 })
        
        for pattern in winPatterns{
            let winPositions = pattern.subtracting(computerPositions)
            
            if winPositions.count == 1{
                let isAvailiable = !isSquareOccupied(in: moves7, forIndex: winPositions.first!)
                if isAvailiable { return winPositions.first! }
            }
        }
        //if Ai cant win, then block
        let humanMoves = moves7.compactMap { $0 }.filter { $0.player7 == .human7 }
        let humanPositions = Set(humanMoves.map { $0.boardIndex7 })
        
        for pattern in winPatterns{
            let winPositions = pattern.subtracting(humanPositions)
            
            if winPositions.count == 1{
                let isAvailiable = !isSquareOccupied(in: moves7, forIndex: winPositions.first!)
                if isAvailiable { return winPositions.first! }
            }
        }
        //if AI cant block, then take middle square
        let centerSquare = 4
        if !isSquareOccupied(in: moves7, forIndex: centerSquare){
            return centerSquare
        }
        //if AI cant take middle square, take random avaliable square
        var movePosition = Int.random(in: 0..<9)
        
        while isSquareOccupied(in: moves7, forIndex: movePosition){
            movePosition = Int.random(in: 0..<9)
        }
        return movePosition
    }
    
    func checkWinCondition(for player7: Player7, in moves7: [Move7?]) -> Bool {
        let winPatterns: Set<Set<Int>> = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        
        let playerMoves = moves7.compactMap { $0 }.filter { $0.player7 == player7 }
        let playerPositions = Set(playerMoves.map { $0.boardIndex7 })
        
        for pattern in winPatterns where pattern.isSubset(of: playerPositions) {
            return true
        }
        
        return false
    }
    
    func checkForDraw(in moves7: [Move7?]) -> Bool {
        return moves7.compactMap { $0 }.count == 9
    }
    
    func resetGame7() {
      moves7 = Array(repeating: nil, count: 9)
    }
   
    
    
    // for move8
    func processPlayerMove8(for position: Int){
        if isSquareOccupied(in: moves8, forIndex: position) { return}
        //this is for when two humans are playing
        //                            moves[i] = Move(player: isHumansTurn ? .human : .computer, boardIndex: i)
        //                            isHumansTurn.toggle()
        
        //this will be for when playing a computer
        
        moves8[position] = Move8(player8: .human8, boardIndex8: position)
        ComputerNewBox = position
        
        if checkWinCondition(for: .human8, in: moves8){
            alertItem = AlertContext.humanWin
            reset = 8
            return
            
        }
        if checkForDraw(in: moves8) {
            alertItem = AlertContext.draw
            reset = 8
            return
        }
        isGameboardDisabled = true
        DisableGameBoards()
        //computer turn
        processComputerMoveFinal()
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
//        { [self] in
//            let computerPosition = determineComputerMovePosition(in: moves8)
//            moves8[computerPosition] = Move8(player8: .computer8, boardIndex8: computerPosition)
//            isGameboardDisabled = false
//            
//            if checkWinCondition(for: .computer8, in: moves8){
//                alertItem = AlertContext.computerWin
//                reset = 8
//                return
//                
//            }
//            if checkForDraw(in: moves8) {
//                alertItem = AlertContext.draw
//                reset = 8
//                return
//                
//            }
//        }
    }
   
    func isSquareOccupied(in moves8: [Move8?], forIndex index: Int) -> Bool{
        return moves8.contains(where: { $0?.boardIndex8 == index})
    }
    
    //Computer Ai
    func determineComputerMovePosition(in moves8: [Move8?]) -> Int
    {
        
        //If AI can win, then win
        let winPatterns: Set<Set<Int>> = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        
        let computerMoves = moves8.compactMap { $0 }.filter { $0.player8 == .computer8 }
        let computerPositions = Set(computerMoves.map { $0.boardIndex8 })
        
        for pattern in winPatterns{
            let winPositions = pattern.subtracting(computerPositions)
            
            if winPositions.count == 1{
                let isAvailiable = !isSquareOccupied(in: moves8, forIndex: winPositions.first!)
                if isAvailiable { return winPositions.first! }
            }
        }
        //if Ai cant win, then block
        let humanMoves = moves8.compactMap { $0 }.filter { $0.player8 == .human8 }
        let humanPositions = Set(humanMoves.map { $0.boardIndex8 })
        
        for pattern in winPatterns{
            let winPositions = pattern.subtracting(humanPositions)
            
            if winPositions.count == 1{
                let isAvailiable = !isSquareOccupied(in: moves8, forIndex: winPositions.first!)
                if isAvailiable { return winPositions.first! }
            }
        }
        //if AI cant block, then take middle square
        let centerSquare = 4
        if !isSquareOccupied(in: moves8, forIndex: centerSquare){
            return centerSquare
        }
        //if AI cant take middle square, take random avaliable square
        var movePosition = Int.random(in: 0..<9)
        
        while isSquareOccupied(in: moves8, forIndex: movePosition){
            movePosition = Int.random(in: 0..<9)
        }
        return movePosition
    }
    
    func checkWinCondition(for player8: Player8, in moves8: [Move8?]) -> Bool {
        let winPatterns: Set<Set<Int>> = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
        
        let playerMoves = moves8.compactMap { $0 }.filter { $0.player8 == player8 }
        let playerPositions = Set(playerMoves.map { $0.boardIndex8 })
        
        for pattern in winPatterns where pattern.isSubset(of: playerPositions) {
            return true
        }
        
        return false
    }
    
    func checkForDraw(in moves8: [Move8?]) -> Bool {
        return moves8.compactMap { $0 }.count == 9
    }
    
    func resetGame8() {
      moves8 = Array(repeating: nil, count: 9)
    }
   
    
    
    // no changebals sfsadjfaoks djfoaisjpf
    func resetGame0() {
        if (reset == 0)
        {
            moves0 = Array(repeating: nil, count: 9)
        }
        else if (reset == 1)
        {
            moves1 = Array(repeating: nil, count: 9)
        }
        else if (reset == 2)
            {
                moves2 = Array(repeating: nil, count: 9)
            }
        else if (reset == 3)
            {
                moves3 = Array(repeating: nil, count: 9)
            }
        else if (reset == 4)
            {
                moves4 = Array(repeating: nil, count: 9)
            }
        else if (reset == 5)
            {
                moves5 = Array(repeating: nil, count: 9)
            }
        else if (reset == 6)
            {
                moves6 = Array(repeating: nil, count: 9)
            }
        else if (reset == 7)
            {
                moves7 = Array(repeating: nil, count: 9)
            }
        else if (reset == 8)
            {
                moves8 = Array(repeating: nil, count: 9)
            }
    }

    
    enum Player{
        case human, computer
    }
    enum Player1{
        case human1, computer1
    }
    enum Player2{
        case human2, computer2
    }
    enum Player3{
        case human3, computer3
    }
    enum Player4{
        case human4, computer4
    }
    enum Player5{
        case human5, computer5
    }
    enum Player6{
        case human6, computer6
    }
    enum Player7{
        case human7, computer7
    }
    enum Player8{
        case human8, computer8
    }
    
    struct Move0{
        let player: Player
        let boardIndex: Int
        
        var indicator: String {
            return player == .human ? "xmark": "circle"
        }
    
    }
    struct Move1{
        let player1: Player1
        let boardIndex1: Int
        
        var indicator: String {
            return player1 == .human1 ? "xmark": "circle"
        }
    
    }
    struct Move2{
        let player2: Player2
        let boardIndex2: Int
        
        var indicator: String {
            return player2 == .human2 ? "xmark": "circle"
        }
    
    }
    struct Move3{
        let player3: Player3
        let boardIndex3: Int
        
        var indicator: String {
            return player3 == .human3 ? "xmark": "circle"
        }
    
    }
    struct Move4{
        let player4: Player4
        let boardIndex4: Int
        
        var indicator: String {
            return player4 == .human4 ? "xmark": "circle"
        }
    
    }
    struct Move5{
        let player5: Player5
        let boardIndex5: Int
        
        var indicator: String {
            return player5 == .human5 ? "xmark": "circle"
        }
    
    }
    struct Move6{
        let player6: Player6
        let boardIndex6: Int
        
        var indicator: String {
            return player6 == .human6 ? "xmark": "circle"
        }
    
    }
    struct Move7{
        let player7: Player7
        let boardIndex7: Int
        
        var indicator: String {
            return player7 == .human7 ? "xmark": "circle"
        }
    
    }
    struct Move8{
        let player8: Player8
        let boardIndex8: Int
        
        var indicator: String {
            return player8 == .human8 ? "xmark": "circle"
        }
    
    }
    
    
    
}
