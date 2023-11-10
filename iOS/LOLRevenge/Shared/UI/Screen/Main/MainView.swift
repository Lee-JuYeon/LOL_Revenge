//
//  File.swift
//  LOLRevenge
//
//  Created by C.A.V.S.S on 2023/11/09.
//

import SwiftUI

struct MainView : View {
    
    @EnvironmentObject var fmVM : FirebaseVM
    
    @State private var villianList : [VillainModel] = [
        VillainModel(
            oldName: "user old name 111",
            currentName: "user name 11",
            uid: "uid 1111",
            photo: [],
            memo: "memo 1111111"
        )
    ]
    var body: some View {
        VStack{
//            RecentHistory()
            VillainList(villainList: $villianList)
            
        }
    }
}
