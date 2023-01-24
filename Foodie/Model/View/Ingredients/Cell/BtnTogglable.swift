//
//  BtnTogglable.swift
//  Foodie
//
//  Created by Omid Shojaeian Zanjani on 18/01/23.
//

import SwiftUI

struct BtnTogglable: View {
    @State  var isSelected:Bool = false
    var actionOnTap:(Bool, String)->Void = { isTapped, btnTitle in
        
    }
    var btnTitle:String = "Default name"
    
    var body: some View {
        Text(self.btnTitle)
            .padding()
            .onTapGesture {
                self.isSelected.toggle()
                self.actionOnTap(self.isSelected, self.btnTitle)
            }
            //.frame(width: 150, height: 80)
            .foregroundColor(self.isSelected ? .white:.black)
            .background(self.isSelected ? .black:Color("buttonColor"))
            .cornerRadius(150)
    }
}

struct BtnTogglable_Previews: PreviewProvider {
    static var previews: some View {
        BtnTogglable()
    }
}
