//
//  DescriptionView.swift
//  Furniture_app
//
//  Created by user on 3/15/23.
//

import SwiftUI

struct DescriptionView:  View{
    var body: some View{
        VStack(alignment: .leading) {
            Text("Luruxy Swedia \nChair").font(.title).fontWeight(.bold)
            
            HStack (spacing: 4){
                ForEach(0 ..< 5) {item in
                    Image("star")
                }
                Text("(4.9)").opacity(0.5).padding(.leading, 8)
                Spacer()
                
            }
            Text("Description").fontWeight(.medium).padding(.vertical, 8)
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.").lineSpacing(8.0).opacity(0.6)
            
            HStack (alignment: .top){
                VStack (alignment: .leading) {
                    Text("Size").fontWeight(.semibold).padding(.bottom, 4)
                    Text("Height: 120 cm").opacity(0.6)
                    Text("Wide: 80 cm").opacity(0.6)
                    Text("Diameter: 72 cm").opacity(0.6)
                }.frame(maxWidth: .infinity, alignment: .leading)
                
                VStack (alignment: .leading) {
                    Text("Treatment").fontWeight(.semibold).padding(.bottom, 4)
                    Text("Jati Wood, Canvas, \nAmazing Love").opacity(0.6)
                    
                }.frame(maxWidth: .infinity, alignment: .leading)
            }.padding(.vertical)
            
            HStack (alignment: .bottom ){
                VStack (alignment: .leading ) {
                    Text("Colors").fontWeight(.semibold)
                    
                    HStack{
                        ColorDotView(color: .white)
                        ColorDotView(color: .black)
                        ColorDotView(color: Color("Primary"))
                    }
                }
                Spacer()
                
                VStack(alignment: .leading){
                    Text("Quantity").fontWeight(.semibold)
                    HStack{
                        Button(action: {}) {
                            Image(systemName: "minus").padding(.all, 8)
                        }.frame(width: 30, height: 30).overlay(RoundedRectangle(cornerRadius:  50).stroke()).foregroundColor(.black)
                        
                        Text("1").font(.title2).fontWeight(.semibold).padding(.horizontal, 8)
                        
                        Button(action: {}) {
                            Image(systemName: "plus").padding(.all, 8)
                        }.background(Color("Primary")).clipShape(Circle()).foregroundColor(.white)
                    }
                }
            }
            
        }.padding().padding(.top).padding(.bottom, 50).background(Color("Bg")).cornerRadius(40.0)
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView()
    }
}
