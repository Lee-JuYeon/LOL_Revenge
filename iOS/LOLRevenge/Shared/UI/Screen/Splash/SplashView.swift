//
//  SplashView.swift
//  LOLRevenge
//
//  Created by C.A.V.S.S on 2023/11/09.
//

import SwiftUI

struct SplashView : View {
    
    private var isUserAuthenticated = false
    var body : some View {
        VStack{
            
        }
        NavigationView{
            switch(isUserAuthenticated){
            case true :
                MainView()
            default :
                LoginRegisterView()
            }
        }
    }
}
