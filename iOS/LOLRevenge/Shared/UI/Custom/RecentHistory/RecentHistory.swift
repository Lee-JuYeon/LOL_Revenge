//
//  RecentHistory.swift
//  LOLRevenge
//
//  Created by C.A.V.S.S on 2023/11/09.
//

import SwiftUI

struct RecentHistory : View {
    
    private var getSummonerName : String = ""
    
    init(
        setSummonerName : String
    ){
        self.getSummonerName = setSummonerName
    }
    
    var body : some View {
        UIWebView
        List {
            ForEach(items, id: \.self) { item in
                Text(item)
            }
            .onDelete { indices in
                items.remove(atOffsets: indices)
            }
        }
    }
    
    private func getOPGGurl(summonerName : String){
        let url = "https://www.op.gg/summoners/kr/\(summonerName)"
        
    }
}
