//
//  File.swift
//  LOLRevenge
//
//  Created by C.A.V.S.S on 2023/11/09.
//

import SwiftUI

struct MainView : View {
    
    @EnvironmentObject var fmVM : FirebaseVM
    
    var body: some View {
        VStack{
//            RecentHistory()
            VillainList()
            
        }
    }
}
