//
//  ViewModel.swift
//  Pizza-Shop-UI
//
//  Created by Daniel Spalek on 02/08/2022.
//

import Foundation

enum Page{
    case home
    case order1
    case order2
    case order3
    case cart
    case login
    case pizzaView
    case pizzas
    case saladView
    case salads
    case sweetView
    case sweets
    case homeService
    case drinkView
    case drinks
    case takeAway
    
}

class ViewModel: ObservableObject{
    @Published var currentPage: Page = .home //default page is home page
}
