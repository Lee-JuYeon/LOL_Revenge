//
//  VillainList.swift
//  LOLRevenge
//
//  Created by C.A.V.S.S on 2023/11/09.
//

import SwiftUI

struct VillainList : View {
    
    @Binding var villainList : [VillainModel]
    @State private var isButtonTapped = false

    var body : some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(villainList, id: \.uid) { model in
                        VillainCell(setModel: model)
                    }
                }
            }
            
            Button(action: {
                // 버튼이 눌렸을 때 수행할 동작을 추가하세요.
                self.isButtonTapped.toggle()
            }) {
                Image(systemName: "plus.circle")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.blue)
                    .padding()
            }
            .offset(x: -20, y: -20) // 버튼의 위치를 조정합니다.
            .sheet(isPresented: $isButtonTapped) {
                // 버튼이 눌렸을 때 표시할 뷰를 지정합니다.
                // 예를 들어, 다른 화면을 표시하거나 모달 창을 띄울 수 있습니다.
                Text("Floating Button Tapped!")
            }
        }
    }
}
