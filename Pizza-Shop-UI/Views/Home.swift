//
//  Home.swift
//  Pizza-Shop-UI
//
//  Created by Daniel Spalek on 02/08/2022.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var viewModel: ViewModel
    @State var search: String = ""
    var body: some View {
        ZStack{
            // ADD BACKGROUND COLOR HERE
            
            Color.white.ignoresSafeArea()
            // CONTENT
            VStack{
                // Header and search bar
                
                
                // MARK: Page content
                ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        HStack{
                            VStack(alignment: .leading){
                                Text("Our Famous Delicious cheese pizza")
                                    .font(.title3)
                                    .bold()
                                    .frame(height: 100)
                                Text("Try it out now!")
                                    .font(.subheadline)
                            }
                            Image("pizzapicture1")
                                .resizable()
                                .frame(width: 180, height: 150)
                                .offset(x: 10)
                        }
                        .padding(.horizontal)
                        .padding(.top, 65)
                        Text("more")
                            .padding()
                    }
                    .frame(maxWidth: .infinity)
//                    .padding(.top, 100)
                }

                Spacer()
            }
            
            // TOP MENU HERE
            VStack{
                HStack(){
                    Image("restaurantLogo")
                    // MENU Button
                    Button {
                        // OPEN MENU
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .resizable()
                            .frame(width: 19, height: 14)
                            .foregroundColor(.black)
                    }
                    .padding(.leading, 5)
                    // SERACH BAR
                    HStack{
                        TextField("", text: $search)
                            .padding(.leading)
                        Image(systemName: "magnifyingglass")
                            .font(.title3)
                    }
                    .padding(15)
                    .background{
                        Color(.systemGray6)
                    }
                    .cornerRadius(25)
                    .padding(.horizontal)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "scooter")
                            .foregroundColor(.black)
                            .font(.title3)
                    }

                }
                .background{
                    GeometryReader{ proxy in
                        let size = proxy.size
                        Rectangle()
                            .fill(.ultraThinMaterial)
                                .opacity(0.8)
                            .blur(radius: 30)
                            .padding(-50)
                            .offset(y: -40)
                    }
                }
                .frame(width: .infinity, alignment: .center)
                .padding()
                .padding(.top, 30)
                .ignoresSafeArea()
                Spacer()
            }
            
            
            // BOTTOM MENU HERE
            BottomMenu().environmentObject(viewModel)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewDevice("iPad mini (6th generation)")
    }
}
