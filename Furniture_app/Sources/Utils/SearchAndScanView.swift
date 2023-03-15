//
//  SearchAndScanView.swift
//  Furniture_app
//
//  Created by user on 3/15/23.
//

import SwiftUI

struct SearchAndScanView: View {
    @State var search: String = ""
    var body: some View{
        HStack {
            HStack{
                Image("Search").padding(.trailing, 8)
                TextField("Search Furniture", text: $search)
            }.padding(.all, 20).background(Color.white).cornerRadius(10.0)
            
            Button(action: {}){
                Image("Scan").resizable().frame(width: 40, height:  30).padding().background(Color("Primary")).cornerRadius(10.0)
            }
        }.padding(.horizontal)
    }
    
}

struct SearchAndScanView_Previews: PreviewProvider {
    static var previews: some View {
        SearchAndScanView()
    }
}
