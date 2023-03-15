//
//  DetailScreen.swift
//  Furniture_app
//
//  Created by user on 3/14/23.
//

import SwiftUI

struct DetailsScreen:  View{
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
                   ZStack {
                Color("Bg").edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    Image("chair_1").resizable().aspectRatio(contentMode: .fit)
                    
                    DescriptionView().offset(y: -40)
                }.edgesIgnoringSafeArea(.top)
                HStack {
                    Text("$1234").font(.title).foregroundColor(.white)
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Text("Add to Cart").padding().padding(.horizontal).background(Color.white).cornerRadius(10.0).foregroundColor(Color("Primary"))
                    })
                }.padding().padding(.horizontal).background(Color("Primary").cornerRadius(50, corners: .topLeft)).frame(maxHeight: .infinity, alignment: .bottom)
                   }.edgesIgnoringSafeArea(.bottom).navigationBarBackButtonHidden(true).navigationBarItems(leading:
                                                                                                            Button(action: {
                                                                                                                           self.presentationMode.wrappedValue.dismiss()
                   }) {
                       Image(systemName: "chevron.backward")
                   }
                                                                                                            , trailing: Image("threeDot")).padding(.all, 12).background(Color.white).cornerRadius(8.0)
       
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailsScreen()
    }
}



struct ColorDotView:  View{
    let color: Color
    var body: some View{
       color.frame(width: 24, height: 24).clipShape(Circle())
    }
}
