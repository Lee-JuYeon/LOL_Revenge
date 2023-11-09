//
//  VillainCell.swift
//  LOLRevenge
//
//  Created by C.A.V.S.S on 2023/11/09.
//

import SwiftUI

struct VillainCell : View {
    private var model : VillainModel
    
    init(setModel : VillainModel){
        self.model = setModel
    }
    var body : some View {
        VStack{
            Text("😈 \(model.oldName)(\(model.currentName)")
                .font(.largeTitle) // 글꼴 크기를 크게 설정
                .fontWeight(.bold)  // 글꼴 두껍게 설정
                .frame(width: 200, height: 100) // 크기 설정
                .multilineTextAlignment(.leading) // 텍스트 정렬 설정 (앞으로 정렬)
                .background(Color.yellow) // 배경색 설정
                .foregroundColor(Color.blue) // 텍스트 색상 설정
                
            Text("📝 \(model.memo ?? "작성된 사유가 없습니다.")")
                .font(.title3) // 글꼴 크기를 크게 설정
                .fontWeight(.semibold)  // 글꼴 두껍게 설정
                .multilineTextAlignment(.leading) // 텍스트 정렬 설정 (앞으로 정렬)
                .background(Color.yellow) // 배경색 설정
                .foregroundColor(Color.blue) // 텍스트 색상 설정
            
            List{
                ForEach(model.photo, id: \.self){ photo in
                    AsyncImage(url : photo?.toURL()){ image in
                        image
                            
                    } placeholder: {
                        ProgressView()
                            .frame(width: 140)
                    }
                    .scaledToFit()
                    .frame(width:140)
                    .clipped()
                }
            }
        }
    }
}
