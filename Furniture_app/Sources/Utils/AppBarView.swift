//
//  AppBarView.swift
//  Furniture_app
//
//  Created by user on 3/15/23.
//

import SwiftUI

struct AppView:  View{
    var body: some View{
        HStack {
            Button(action: {}) {
                Image("menu").padding().background(Color(.white)).cornerRadius(10.0)
            }
            Spacer()
            Button(action: {}) {
                Image("Profile").resizable().frame(width: 42, height:  42).cornerRadius(10.0)
            }
        }.padding(.horizontal)
    }
}

struct AppBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
