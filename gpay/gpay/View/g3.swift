//
//  g3.swift
//  gpay
//
//  Created by shashwat singh on 11/07/24.
//

import SwiftUI

struct g3: View {
    var name: String
    var upiID: String
    var amount: String
    var body: some View {
        let backgroundColor = Color(red: 0.07, green: 0.07, blue: 0.07)
        let lightgray = Color(red: 0.80, green: 0.80, blue: 0.80)
        ZStack{
            //background
            backgroundColor.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            //content
           
            VStack{
                Spacer()
                Image("tick")
                    .resizable()
                    .frame(width:120,height: 120)
                    .overlay{
                        Circle()
                            .stroke(lineWidth: 5)
                            .frame(width:120)
                            .foregroundStyle(.black)
                    }
                Spacer()
                HStack(spacing: -2){
                    Image(systemName: "indianrupeesign")
                        .foregroundColor(.white)
                        .font(.title3)
                    Text("\(amount)")
                        .foregroundColor(.white)
                        .font(.title)
                }
              
                Text("Paid to \(name)")
                    .foregroundColor(.white)
                    .font(.title2)
                Text("UPI ID: \(upiID)")
                    .foregroundColor(lightgray)
                    .font(.title3)
                Spacer()
                Text(currentdate)
                    .foregroundColor(.white)
                let tranUPI = generateRandomNumber()
                Text("UPI tranaction ID: \(tranUPI)")
                    .font(.callout)
                    .foregroundColor(lightgray)
                Spacer()
            HStack{
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .stroke()
                            .frame(width: 170,height: 50)
                        Text("share screenshot")
                    }
                })
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .frame(width: 100,height: 50)
                            Text("Done")
                                .foregroundColor(.black)
                        }
                        })
                    
                }
            .padding(.vertical)
                VStack(spacing: -10, content: {
                    Text("Powered by".capitalized)
//                            .colorInvert()
                            .font(.caption)
                            .italic()
                        Image("upi")
                            .resizable()
                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 50)
                })
            }

            
        }
    }
    func generateRandomNumber() ->String{
        let number = UInt64.random(in: 10000_000_000...99999_999_999)
       return String(number)
    }
    var currentdate: String{
        let date =  Date()
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}

#Preview {
    g3(name: "Kumar Shashwat", upiID: "shashwatrajwanshi41@okhdfcbank", amount: "1000")

}
