//
//  HomeView.swift
//  gpay
//
//  Created by shashwat singh on 03/11/24.
//

import SwiftUI

struct HomeView: View {
    @State private var scannedString: String = ""
    @State private var isScanning: Bool = true
    
    @State private var showScanner: Bool = false
    
    var body: some View {
        ScrollView{
            ZStack{
                Color(.secondarySystemBackground).edgesIgnoringSafeArea(.all)
                VStack{
                    VStack {
                        HStack{
                            RoundedRectangle(cornerRadius: 30)
                                .fill(.gray.opacity(0.4) )
                                .frame(width: 300,height:50)
                                .overlay(){
                                    HStack{
                                        Image(systemName: "magnifyingglass")
                                            .font(.title)
                                            .foregroundColor(Color.white)
                                            .fontWeight(.bold)
                                        Text("Pay anyone on UPI")
                                            .font(.title3)
                                            .foregroundStyle(.gray)
                                        Spacer()
                                    }
                                    .padding(.leading)
                                }
                            Circle().fill(.blue)
                                .overlay{
                                    Text("S")
                                        .font(.title)
                                        .foregroundStyle(.white)
                                }
                        }.padding(.horizontal)
                        Image("gpayBG")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity, maxHeight: 200)
                            .clipped()
                    }
                    .background(Color(.systemGray6))
                    HStack{
                        VStack{
                            NavigationLink(destination: QRscannerView()){
                                
                                Image(systemName: "qrcode")
                                    .resizable()
                                    .frame(width: 30,height: 30)
                                    .padding(.horizontal)
                            }
                            Text("scan any")
                                .foregroundStyle(.white)
                                .font(.caption)
                            Text("Qr code")
                                .foregroundStyle(.white)
                                .font(.caption)
                        }
                    
                        VStack(alignment: .center){
                            Image(systemName: "rectangle")
                                .resizable()
                                .frame(width: 20, height:30)
                                .padding(.horizontal)
                                .padding(.horizontal)
                                .overlay{
                                    Image(systemName: "phone")
                                }
                            Text("Pay")
                                .foregroundStyle(.white)
                                .font(.caption)
                            Text("contacts")
                                .foregroundStyle(.white)
                                .font(.caption)
                        }
                        VStack{
                            Image(systemName: "iphone")
                                .resizable()
                                .frame(width: 20,height: 30)
                                .padding(.horizontal)
                                .padding(.horizontal)
                            Text("Pay phone")
                                .foregroundStyle(.white)
                                .font(.caption)
                            Text("number")
                                .foregroundStyle(.white)
                                .font(.caption)
                            
                        }
                        VStack{
                            Image(systemName: "building.columns.fill")
                                .resizable()
                                .frame(width:40,height: 40)
                                .padding(.horizontal)
                            Text("Bank")
                                .foregroundStyle(.white)
                                .font(.caption)
                            Text("transfer")
                                .foregroundStyle(.white)
                                .font(.caption)
                        }
                    }
                    .foregroundStyle(.blue)
                    .padding(.bottom)
                    HStack{
                        VStack{
                            Image(systemName: "at")
                                .resizable()
                                .frame(width: 30,height: 30)
                                .padding(.horizontal)
                            Text("Pay UPI ID")
                                .foregroundStyle(.white)
                                .font(.caption)
                            Text("or number")
                                .foregroundStyle(.white)
                                .font(.caption)
                        }
                        VStack{
                            Image(systemName: "person")
                                .resizable()
                                .frame(width: 30,height: 30)
                                .padding(.horizontal)
                                .padding(.horizontal)
                            Text("Self")
                                .foregroundStyle(.white)
                                .font(.caption)
                            Text("transfer")
                                .foregroundStyle(.white)
                                .font(.caption)
                        }
                        VStack{
                            Image(systemName: "list.bullet.rectangle.portrait")
                                .resizable()
                                .frame(width: 20,height: 30)
                                .padding(.horizontal)
                            Text("pay")
                                .foregroundStyle(.white)
                                .font(.caption)
                            Text("contact")
                                .foregroundStyle(.white)
                                .font(.caption)
                        }
                        
                        VStack{
                            Image(systemName: "iphone")
                                .resizable()
                                .frame(width: 20, height: 30)
                                .padding(.horizontal)
                                .padding(.horizontal)
                                .overlay{
                                    Image(systemName: "bolt")
                                }
                            Text("Mobile")
                                .foregroundStyle(.white)
                                .font(.caption)
                            Text("recharge")
                                .foregroundStyle(.white)
                                .font(.caption)
                        }
                    }.foregroundStyle(.blue)
                    //people section
                    VStack{
                        HStack{
                            Text("people".capitalized)
                                .foregroundStyle(.white)
                                .font(.title)
                                .padding()
                            Spacer()
                        }
                        HStack(spacing: 20)
                        {
                            VStack{
                                Circle().fill(.green)
                                    .frame(width: 60,height: 60)
                                    .overlay{
                                        Text("K")
                                            .font(.system(size: 35))
                                            .foregroundStyle(.white)
                                    }
                                Text("kunal")
                                    .font(.callout)
                                    .bold()
                            }
                            VStack{
                                Circle().fill(.yellow)
                                    .frame(width: 60,height: 60)
                                    .overlay{
                                        Text("S")
                                            .font(.system(size: 35))
                                            .foregroundStyle(.white)
                                    }
                                Text("Santosh")
                                    .font(.callout)
                                    .bold()
                            }
                            VStack{
                                Circle().fill(.orange)
                                    .frame(width: 60,height: 60)
                                    .overlay{
                                        Text("A")
                                            .font(.system(size: 35))
                                            .foregroundStyle(.white)
                                    }
                                Text("Aditya")
                                    .font(.callout)
                                    .bold()
                            }
                            VStack{
                                Circle().fill(.brown)
                                    .frame(width: 60,height: 60)
                                    .overlay{
                                        Text("A")
                                            .font(.system(size: 35))
                                            .foregroundStyle(.white)
                                    }
                                Text("Aditya")
                                    .font(.callout)
                                    .bold()
                                
                            }
                        }
                        .padding(.vertical)
                        HStack(spacing: 20){
                            VStack{
                                Circle().fill(.orange)
                                    .frame(width: 60,height: 60)
                                    .overlay{
                                        Text("A")
                                            .font(.system(size: 35))
                                            .foregroundStyle(.white)
                                    }
                                Text("Aditya")
                                    .font(.callout)
                                    .bold()
                                
                            }
                            VStack{
                                Circle().fill(.orange)
                                    .frame(width: 60,height: 60)
                                    .overlay{
                                        Text("A")
                                            .font(.system(size: 35))
                                            .foregroundStyle(.white)
                                    }
                                Text("Aditya")
                                    .font(.callout)
                                    .bold()
                                
                            }
                            VStack{
                                Circle().fill(.orange)
                                    .frame(width: 60,height: 60)
                                    .overlay{
                                        Text("A")
                                            .font(.system(size: 35))
                                            .foregroundStyle(.white)
                                    }
                                Text("Aditya")
                                    .font(.callout)
                                    .bold()
                                
                            }
                            VStack{
                                Circle().stroke( )
                                    .frame(width: 60,height: 60)
                                    .overlay{
                                        Image(systemName: "chevron.down")
                                            .font(.system(size: 35))
                                            .foregroundStyle(.blue)
                                    }
                                Text("more".capitalized)
                                    .font(.callout)
                                    .bold()
                            }
                        }
                    }
                    //manage your money
                    VStack(alignment: .leading){
                        HStack{
                            Text("Manage your money")
                                .font(.system(size: 30))
                                .bold()
                                .padding()
                            Spacer()
                        }
                        HStack{
                            Text("Check your CIBIL score for free")
                                .padding()
                            Spacer()
                            Image(systemName: "chevron.right")
                                .padding(20)
                        }
                        HStack{
                            Text("See transaction history")
                                .padding()
                            Spacer()
                            Image(systemName: "chevron.right")
                                .padding(20)
                        }
                        HStack{
                            Text("Check your balance")
                                .padding(.horizontal,20)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .padding(20)
                        }
                    }
                    Image("baseimg")
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight: 300)
                        .clipped()
                    
                }
            }
            .scrollIndicators(.hidden)
           
        }
    
        
    }
   
}
#Preview {
    ContentView()
}
