//
//  BottomMenu.swift
//  Pizza-Shop-UI
//
//  Created by Daniel Spalek on 02/08/2022.
//

import SwiftUI

struct BottomMenu: View {
    @EnvironmentObject var viewModel: ViewModel
    @State var menuOpen: Bool = false
    var body: some View {
        ZStack{
            if menuOpen {
                Color.black.opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation(.easeInOut){
                            menuOpen = false
                        }
                    }
            }
            VStack{
                Spacer()
                HStack{
                    // Home button
                    Button {
                        withAnimation(.easeInOut){
                            menuOpen = false
                            viewModel.currentPage = .home
                        }
                    } label: {
                        Image(systemName: "house\(viewModel.currentPage == .home && !menuOpen ? ".fill" : "")")
                            .foregroundColor(viewModel.currentPage == .home && !menuOpen ? .green : .black)
                            .font(.title2)
                    }
                    Spacer()
                    // Home service button
                    Button {
                        withAnimation(.easeInOut){
                            menuOpen = false
                            viewModel.currentPage = .homeService
                        }
                    } label: {
                        Image(systemName: "scooter")
                            .foregroundColor(viewModel.currentPage == .homeService && !menuOpen ? .green : .black)
                            .font(.title2)
                    }
                    Spacer()
                    // Menu button
                    Button {
                        withAnimation(.easeInOut){
                            menuOpen.toggle()
                        }
                    } label: {
                        Image(systemName: "menucard\(menuOpen ? ".fill" : "")")
                            .foregroundColor(menuOpen ? .green : .black)
                            .font(.title2)
                    }
                    Spacer()
                    // takeout
                    Button {
                        withAnimation(.easeInOut){
                            menuOpen = false
                            viewModel.currentPage = .takeAway
                        }
                    } label: {
                        Image(systemName: "takeoutbag.and.cup.and.straw\(viewModel.currentPage == .takeAway && !menuOpen ? ".fill" : "")")
                            .foregroundColor(viewModel.currentPage == .takeAway && !menuOpen ? .green : .black)
                            .font(.title2)
                    }
                }
                .padding(.horizontal, 40)
                .padding(.top)
                .padding(.bottom, 7)
                .background{
                    //apply shadow to background so no shadow on buttons.
                    Color.white
                        .ignoresSafeArea()
                        .shadow(color: .black.opacity(0.1),radius: menuOpen ? 0 : 20)
                }
                .background{
                        ZStack{
                            VStack{
                                HStack{
                                    // drinks
                                    Button {
                                        
                                    } label: {
                                        Image("drinkIcon")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 55, height: 55)
                                    }
                                    .offset(x: -50, y: 120)
                                    
                                    // Pizza
                                    Button {
                                        
                                    } label: {
                                        Image("pizzaIcon")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 55, height: 55)
                                    }
                                    .offset(x: -30, y: 30)
                                    
                                    Text("MENU")
                                        .padding(.horizontal, -30)
                                        .font(.title2.bold())
                                        .offset(y: 120)
                                        .foregroundColor(.red)
                                        .frame(width: 10)
                                    
                                    // Salads
                                    Button {
                                        
                                    } label: {
                                        Image("saladIcon")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 55, height: 55)
                                    }
                                    .offset(x: 30, y: 30)
                                    // sweets
                                    Button {
                                        
                                    } label: {
                                        Image("sweetsIcon")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 55, height: 55)
                                    }
                                    .offset(x: 40, y: 120)
                                }
                                Spacer()
                            }
                            .font(.title)
                            .padding()
                            .frame(maxWidth: .infinity)

                        }
                        .background(.white)
                        .frame(width: menuOpen ? 500 : 0,height: menuOpen ? 500 : 0)
                        .cornerRadius(menuOpen ? 500: 100)
                        .shadow(radius: 10)
                        .transition(.scale)
                        
                }
        //        .background(.red)
            }
        }
    }
}

struct BottomMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewDevice("iPad mini (6th generation)")
    }
}
