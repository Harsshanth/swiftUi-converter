//
//  ContentView.swift
//  Rupees2Dollar
//
//  Created by user on 03/09/21.
//

import SwiftUI

struct ContentView: View {
    @State var rs:String = ""
    @State var dollar:String = ""
    
    var body: some View {
        VStack{
        TextField("Rupees",text:$rs)
            .padding()
            Button(action: {
                dollar = String(convert(rs: rs))
            }, label: {
                Text("Convert")
            } )
        TextField("Dollar",text:$dollar)
            .padding()
        
    }
    }
}

func convert(rs:String )-> Double {
    let rupees:Double? = Double(rs)
    if (rupees !=  nil){
        let dollar = rupees! / 73.0
        return round(dollar*1000)/1000
    }
    return 0.0
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
