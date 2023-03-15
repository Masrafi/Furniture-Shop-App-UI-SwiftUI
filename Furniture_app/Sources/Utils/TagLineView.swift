//
//  TagLineView.swift
//  Furniture_app
//
//  Created by user on 3/15/23.
//

import SwiftUI

struct TagLineView:  View{
    var body: some View{
        Text("Find The \nBest ").font(.custom("PlayfairDisplay-Regular", size: 28)).foregroundColor(Color("Primary")) + Text("Furniture!").font(.custom("PlayfairDisplay-Bold", size: 28)).foregroundColor(Color("Primary"))
    }
   
}
struct TagLineView_Previews: PreviewProvider {
    static var previews: some View {
        TagLineView()
    }
}
