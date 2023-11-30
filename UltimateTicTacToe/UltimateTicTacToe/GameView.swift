//
//  GameView.swift
//  UltimateTicTacToe
//
//  Created by Kaelin Wu on 10/11/23.
//

import SwiftUI


struct GameView: View {
    
    @StateObject private var viewModel = GameViewModel()
    
    
    
    
    
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                Spacer()
                LazyVGrid(columns: viewModel.columns, spacing: 5)
                {
//                    ForEach(0..<9)
//                    { i in
                    ZStack {
                        Rectangle()
                            .foregroundColor(.blue)
                            .opacity(0.5)
                            .frame(width: geometry.size.width/3-10, height: geometry.size.width/3-10)
//                            Image(systemName: viewModel.moves[i]?.indicator ?? "")
//                                .resizable()
//                                .frame(width: 40, height: 40)
//                                .foregroundColor(.white)
                        GeometryReader{ geometry in
                            VStack{
                                Spacer()
                                LazyVGrid(columns: viewModel.columns2, spacing: 5)
                                {
                                    ForEach(0..<9)
                                    { i in
                                        ZStack {
                                            Rectangle()
                                                .offset(CGSize(width: 0, height: 0-10.0))
                                                .foregroundColor(.red)
                                                .opacity(0.5)
                                                .frame(width: geometry.size.width/4, height: geometry.size.width/4)
                                            Image(systemName: viewModel.moves0[i]?.indicator ?? "")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                                .foregroundColor(.white)
                                                            
                                        }
                                        .onTapGesture{
                                            viewModel.processPlayerMove(for: i)
                                        }
                                        
                                        
                                    }
                                    
                                }
                                //.disabled(viewModel.isGameboardDisabled)
                                .disabled(viewModel.isGameboardDisabled0)
                                .padding()
                                .alert(item: $viewModel.alertItem, content: { alertItem in
                                    Alert(title: alertItem.title, message: alertItem.message, dismissButton: .default(alertItem.buttonTitle, action: {viewModel.resetGame0()}))
                                })
                                Spacer()
                            }
                        }
                        
                    //}
//                        .onTapGesture{
//                            viewModel.processPlayerMove(for: i)
//                        }
                    
                    
                }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.blue)
                            .opacity(0.5)
                            .frame(width: geometry.size.width/3-10, height: geometry.size.width/3-10)
//                            Image(systemName: viewModel.moves[i]?.indicator ?? "")
//                                .resizable()
//                                .frame(width: 40, height: 40)
//                                .foregroundColor(.white)
                        GeometryReader{ geometry in
                            VStack{
                                Spacer()
                                LazyVGrid(columns: viewModel.columns2, spacing: 5)
                                {
                                    ForEach(0..<9)
                                    { i in
                                        ZStack {
                                            Rectangle()
                                                .offset(CGSize(width: 0, height: 0-10.0))
                                                .foregroundColor(.red)
                                                .opacity(0.5)
                                                .frame(width: geometry.size.width/4, height: geometry.size.width/4)
                                            Image(systemName: viewModel.moves1[i]?.indicator ?? "")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                                .foregroundColor(.white)
                                                            
                                        }
                                        .onTapGesture{
                                            viewModel.processPlayerMove1(for: i)
                                        }
                                        
                                        
                                    }
                                    
                                }
                                //.disabled(viewModel.isGameboardDisabled)
                                .disabled(viewModel.isGameboardDisabled1)
                                .padding()
                                .alert(item: $viewModel.alertItem, content: { alertItem in
                                    Alert(title: alertItem.title, message: alertItem.message, dismissButton: .default(alertItem.buttonTitle, action: {viewModel.resetGame0()}))
                                })
                                Spacer()
                            }
                        }
                        
                    //}
//                        .onTapGesture{
//                            viewModel.processPlayerMove(for: i)
//                        }
                    
                    
                }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.blue)
                            .opacity(0.5)
                            .frame(width: geometry.size.width/3-10, height: geometry.size.width/3-10)
//                            Image(systemName: viewModel.moves[i]?.indicator ?? "")
//                                .resizable()
//                                .frame(width: 40, height: 40)
//                                .foregroundColor(.white)
                        GeometryReader{ geometry in
                            VStack{
                                Spacer()
                                LazyVGrid(columns: viewModel.columns2, spacing: 5)
                                {
                                    ForEach(0..<9)
                                    { i in
                                        ZStack {
                                            Rectangle()
                                                .offset(CGSize(width: 0, height: 0-10.0))
                                                .foregroundColor(.red)
                                                .opacity(0.5)
                                                .frame(width: geometry.size.width/4, height: geometry.size.width/4)
                                            Image(systemName: viewModel.moves2[i]?.indicator ?? "")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                                .foregroundColor(.white)
                                                            
                                        }
                                        .onTapGesture{
                                            viewModel.processPlayerMove2(for: i)
                                        }
                                        
                                        
                                    }
                                    
                                }
                                //.disabled(viewModel.isGameboardDisabled)
                                .disabled(viewModel.isGameboardDisabled2)
                                .padding()
                                .alert(item: $viewModel.alertItem, content: { alertItem in
                                    Alert(title: alertItem.title, message: alertItem.message, dismissButton: .default(alertItem.buttonTitle, action: {viewModel.resetGame0()}))
                                })
                                Spacer()
                            }
                        }
                        
                    //}
//                        .onTapGesture{
//                            viewModel.processPlayerMove(for: i)
//                        }
                    
                    
                }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.blue)
                            .opacity(0.5)
                            .frame(width: geometry.size.width/3-10, height: geometry.size.width/3-10)
//                            Image(systemName: viewModel.moves[i]?.indicator ?? "")
//                                .resizable()
//                                .frame(width: 40, height: 40)
//                                .foregroundColor(.white)
                        GeometryReader{ geometry in
                            VStack{
                                Spacer()
                                LazyVGrid(columns: viewModel.columns2, spacing: 5)
                                {
                                    ForEach(0..<9)
                                    { i in
                                        ZStack {
                                            Rectangle()
                                                .offset(CGSize(width: 0, height: 0-10.0))
                                                .foregroundColor(.red)
                                                .opacity(0.5)
                                                .frame(width: geometry.size.width/4, height: geometry.size.width/4)
                                            Image(systemName: viewModel.moves3[i]?.indicator ?? "")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                                .foregroundColor(.white)
                                                            
                                        }
                                        .onTapGesture{
                                            viewModel.processPlayerMove3(for: i)
                                        }
                                        
                                        
                                    }
                                    
                                }
                               // .disabled(viewModel.isGameboardDisabled)
                                .disabled(viewModel.isGameboardDisabled3)
                                .padding()
                                .alert(item: $viewModel.alertItem, content: { alertItem in
                                    Alert(title: alertItem.title, message: alertItem.message, dismissButton: .default(alertItem.buttonTitle, action: {viewModel.resetGame0()}))
                                })
                                Spacer()
                            }
                        }
                        
                    //}
//                        .onTapGesture{
//                            viewModel.processPlayerMove(for: i)
//                        }
                    
                    
                }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.blue)
                            .opacity(0.5)
                            .frame(width: geometry.size.width/3-10, height: geometry.size.width/3-10)
//                            Image(systemName: viewModel.moves[i]?.indicator ?? "")
//                                .resizable()
//                                .frame(width: 40, height: 40)
//                                .foregroundColor(.white)
                        GeometryReader{ geometry in
                            VStack{
                                Spacer()
                                LazyVGrid(columns: viewModel.columns2, spacing: 5)
                                {
                                    ForEach(0..<9)
                                    { i in
                                        ZStack {
                                            Rectangle()
                                                .offset(CGSize(width: 0, height: 0-10.0))
                                                .foregroundColor(.red)
                                                .opacity(0.5)
                                                .frame(width: geometry.size.width/4, height: geometry.size.width/4)
                                            Image(systemName: viewModel.moves4[i]?.indicator ?? "")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                                .foregroundColor(.white)
                                                            
                                        }
                                        .onTapGesture{
                                            viewModel.processPlayerMove4(for: i)
                                        }
                                        
                                        
                                    }
                                    
                                }
                                //.disabled(viewModel.isGameboardDisabled)
                                .disabled(viewModel.isGameboardDisabled4)
                                .padding()
                                .alert(item: $viewModel.alertItem, content: { alertItem in
                                    Alert(title: alertItem.title, message: alertItem.message, dismissButton: .default(alertItem.buttonTitle, action: {viewModel.resetGame0()}))
                                })
                                Spacer()
                            }
                        }
                        
                    //}
//                        .onTapGesture{
//                            viewModel.processPlayerMove(for: i)
//                        }
                    
                    
                }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.blue)
                            .opacity(0.5)
                            .frame(width: geometry.size.width/3-10, height: geometry.size.width/3-10)
//                            Image(systemName: viewModel.moves[i]?.indicator ?? "")
//                                .resizable()
//                                .frame(width: 40, height: 40)
//                                .foregroundColor(.white)
                        GeometryReader{ geometry in
                            VStack{
                                Spacer()
                                LazyVGrid(columns: viewModel.columns2, spacing: 5)
                                {
                                    ForEach(0..<9)
                                    { i in
                                        ZStack {
                                            Rectangle()
                                                .offset(CGSize(width: 0, height: 0-10.0))
                                                .foregroundColor(.red)
                                                .opacity(0.5)
                                                .frame(width: geometry.size.width/4, height: geometry.size.width/4)
                                            Image(systemName: viewModel.moves5[i]?.indicator ?? "")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                                .foregroundColor(.white)
                                                            
                                        }
                                        .onTapGesture{
                                            viewModel.processPlayerMove5(for: i)
                                        }
                                        
                                        
                                    }
                                    
                                }
                                //.disabled(viewModel.isGameboardDisabled)
                                .disabled(viewModel.isGameboardDisabled5)
                                .padding()
                                .alert(item: $viewModel.alertItem, content: { alertItem in
                                    Alert(title: alertItem.title, message: alertItem.message, dismissButton: .default(alertItem.buttonTitle, action: {viewModel.resetGame0()}))
                                })
                                Spacer()
                            }
                        }
                        
                    //}
//                        .onTapGesture{
//                            viewModel.processPlayerMove(for: i)
//                        }
                    
                    
                }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.blue)
                            .opacity(0.5)
                            .frame(width: geometry.size.width/3-10, height: geometry.size.width/3-10)
//                            Image(systemName: viewModel.moves[i]?.indicator ?? "")
//                                .resizable()
//                                .frame(width: 40, height: 40)
//                                .foregroundColor(.white)
                        GeometryReader{ geometry in
                            VStack{
                                Spacer()
                                LazyVGrid(columns: viewModel.columns2, spacing: 5)
                                {
                                    ForEach(0..<9)
                                    { i in
                                        ZStack {
                                            Rectangle()
                                                .offset(CGSize(width: 0, height: 0-10.0))
                                                .foregroundColor(.red)
                                                .opacity(0.5)
                                                .frame(width: geometry.size.width/4, height: geometry.size.width/4)
                                            Image(systemName: viewModel.moves6[i]?.indicator ?? "")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                                .foregroundColor(.white)
                                                            
                                        }
                                        .onTapGesture{
                                            viewModel.processPlayerMove6(for: i)
                                        }
                                        
                                        
                                    }
                                    
                                }
                                //.disabled(viewModel.isGameboardDisabled)
                                .disabled(viewModel.isGameboardDisabled6)
                                .padding()
                                .alert(item: $viewModel.alertItem, content: { alertItem in
                                    Alert(title: alertItem.title, message: alertItem.message, dismissButton: .default(alertItem.buttonTitle, action: {viewModel.resetGame0()}))
                                })
                                Spacer()
                            }
                        }
                        
                    //}
//                        .onTapGesture{
//                            viewModel.processPlayerMove(for: i)
//                        }
                    
                    
                }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.blue)
                            .opacity(0.5)
                            .frame(width: geometry.size.width/3-10, height: geometry.size.width/3-10)
//                            Image(systemName: viewModel.moves[i]?.indicator ?? "")
//                                .resizable()
//                                .frame(width: 40, height: 40)
//                                .foregroundColor(.white)
                        GeometryReader{ geometry in
                            VStack{
                                Spacer()
                                LazyVGrid(columns: viewModel.columns2, spacing: 5)
                                {
                                    ForEach(0..<9)
                                    { i in
                                        ZStack {
                                            Rectangle()
                                                .offset(CGSize(width: 0, height: 0-10.0))
                                                .foregroundColor(.red)
                                                .opacity(0.5)
                                                .frame(width: geometry.size.width/4, height: geometry.size.width/4)
                                            Image(systemName: viewModel.moves7[i]?.indicator ?? "")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                                .foregroundColor(.white)
                                                            
                                        }
                                        .onTapGesture{
                                            viewModel.processPlayerMove7(for: i)
                                        }
                                        
                                        
                                    }
                                    
                                }
                                //.disabled(viewModel.isGameboardDisabled)
                                .disabled(viewModel.isGameboardDisabled7)
                                .padding()
                                .alert(item: $viewModel.alertItem, content: { alertItem in
                                    Alert(title: alertItem.title, message: alertItem.message, dismissButton: .default(alertItem.buttonTitle, action: {viewModel.resetGame0()}))
                                })
                                Spacer()
                            }
                        }
                        
                    //}
//                        .onTapGesture{
//                            viewModel.processPlayerMove(for: i)
//                        }
                    
                    
                }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.blue)
                            .opacity(0.5)
                            .frame(width: geometry.size.width/3-10, height: geometry.size.width/3-10)
//                            Image(systemName: viewModel.moves[i]?.indicator ?? "")
//                                .resizable()
//                                .frame(width: 40, height: 40)
//                                .foregroundColor(.white)
                        GeometryReader{ geometry in
                            VStack{
                                Spacer()
                                LazyVGrid(columns: viewModel.columns2, spacing: 5)
                                {
                                    ForEach(0..<9)
                                    { i in
                                        ZStack {
                                            Rectangle()
                                                .offset(CGSize(width: 0, height: 0-10.0))
                                                .foregroundColor(.red)
                                                .opacity(0.5)
                                                .frame(width: geometry.size.width/4, height: geometry.size.width/4)
                                            Image(systemName: viewModel.moves8[i]?.indicator ?? "")
                                                .resizable()
                                                .frame(width: 10, height: 10)
                                                .foregroundColor(.white)
                                                            
                                        }
                                        .onTapGesture{
                                            viewModel.processPlayerMove8(for: i)
                                        }
                                        
                                        
                                    }
                                    
                                }
                                //.disabled(viewModel.isGameboardDisabled)
                                .disabled(viewModel.isGameboardDisabled8)
                                .padding()
                                .alert(item: $viewModel.alertItem, content: { alertItem in
                                    Alert(title: alertItem.title, message: alertItem.message, dismissButton: .default(alertItem.buttonTitle, action: {viewModel.resetGame0()}))
                                })
                                Spacer()
                            }
                        }
                        
                    //}
//                        .onTapGesture{
//                            viewModel.processPlayerMove(for: i)
//                        }
                    
                    
                }
                }
               //.disabled(viewModel.isGameboardDisabled)
                .padding()
//                .alert(item: $viewModel.alertItem, content: { alertItem in
//                    Alert(title: alertItem.title, message: alertItem.message, dismissButton: .default(alertItem.buttonTitle, action:
//                        {viewModel.resetGame0()}))
//                    
//                                                                                                      
//                })
                Spacer()
                
                
                
                
            }
        }
        
        
    }
    
    

}

#Preview {
    GameView()
}
