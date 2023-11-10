//
//  LoginRegisterView.swift
//  LOLRevenge
//
//  Created by C.A.V.S.S on 2023/11/09.
//

import SwiftUI

struct LoginRegisterView : View {
    var body : some View {
        VStack(
            alignment: HorizontalAlignment.center,
            spacing: 0
        ){
            GoogleLoginButton()
            AppleLoginButton()
        }
    }
}
