//
//  HomeView.swift
//  gpay
//
//  Created by shashwat singh on 03/11/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView{
            ZStack{
                Color(.secondarySystemBackground).edgesIgnoringSafeArea(.all)
                VStack{
                    VStack {
                        HStack{
                            RoundedRectangle(cornerRadius: 30)
                                .fill(.gray.opacity(0.4) )
                                .frame(width: 300,height:60)
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
                            Button(action:{print("button clicked!!")}){
                                Image(systemName: "qrcode")
                                    .resizable()
                                    .frame(width: 40,height: 40)
                                    .padding(.horizontal)
                                }
                            Text("scan any QR code")
                                .foregroundStyle(.white)
                        }
                       
                        VStack(alignment: .center){
                            Image(systemName: "rectangle")
                                .resizable()
                                .frame(width: 30, height:40)
                                .padding(.horizontal)
                                .padding(.horizontal)
                                .overlay{
                                    Image(systemName: "phone")
                                }
                            Text("Pay")
                                .foregroundStyle(.white)
                            Text("contacts")
                                .foregroundStyle(.white)
                        }
                        VStack{
                            Image(systemName: "iphone")
                                .resizable()
                                .frame(width: 30,height: 40)
                                .padding(.horizontal)
                                .padding(.horizontal)
                            Text("Pay phone")
                                .foregroundStyle(.white)
                            Text("number")
                                .foregroundStyle(.white)
                            
                        }
                        VStack{
                            Image(systemName: "building.columns.fill")
                                .resizable()
                                .frame(width:40,height: 40)
                                .padding(.horizontal)
                            Text("Bank")
                                .foregroundStyle(.white)
                            Text("transfer")
                                .foregroundStyle(.white)
                            }
                        }
                    .foregroundStyle(.blue)
                    HStack{
                        VStack{
                            Image(systemName: "at")
                                .resizable()
                                .frame(width: 40,height: 40)
                                .padding(.horizontal)
                            Text("pay UPI ID or number")
                                .foregroundStyle(.white)
                        }
                        VStack{
                            Image(systemName: "person")
                                .resizable()
                                .frame(width: 40,height: 40)
                                .padding(.horizontal)
                                .padding(.horizontal)
                            Text("Self")
                                .foregroundStyle(.white)
                            Text("transfer")
                                .foregroundStyle(.white)
                        }
                        VStack{
                            Image(systemName: "list.bullet.rectangle.portrait")
                                .resizable()
                                .frame(width: 30,height: 40)
                                .padding(.horizontal)
                            Text("pay")
                                .foregroundStyle(.white)
                            Text("contact")
                                .foregroundStyle(.white)
                        }
                        
                        VStack{
                            Image(systemName: "iphone")
                                .resizable()
                                .frame(width: 30, height: 40)
                                .padding(.horizontal)
                                .padding(.horizontal)
                                .overlay{
                                Image(systemName: "bolt")
                            }
                            Text("Mobile")
                                .foregroundStyle(.white)
                            Text("recharge")
                                .foregroundStyle(.white)
                        }
                    }.foregroundStyle(.blue)
                    //people section
                    VStack{
                        HStack{
                            Text("people".capitalized)
                                .foregroundStyle(.white)
                                .font(.largeTitle)
                                .padding()
                            Spacer()
                                .padding()
                                .padding()
                        }
                        HStack(spacing: 20)
                        {
                            VStack{
                                Circle().fill(.green)
                                    .frame(width: 70,height: 70)
                                    .overlay{
                                        Text("K")
                                            .font(.system(size: 45))
                                            .foregroundStyle(.white)
                                    }
                                Text("kunal")
                                    .font(.title3)
                                    .bold()
                            }
                            VStack{
                                Circle().fill(.yellow)
                                    .frame(width: 70,height: 70)
                                    .overlay{
                                        Text("S")
                                            .font(.system(size: 45))
                                            .foregroundStyle(.white)
                                    }
                                Text("Santosh")
                                    .font(.title3)
                                    .bold()
                            }
                            VStack{
                                Circle().fill(.orange)
                                    .frame(width: 70,height: 70)
                                    .overlay{
                                        Text("A")
                                            .font(.system(size: 45))
                                            .foregroundStyle(.white)
                                    }
                                Text("Aditya")
                                    .font(.title3)
                                    .bold()
                            }
                            VStack{
                                Circle().fill(.brown)
                                    .frame(width: 70,height: 70)
                                    .overlay{
                                        Text("P")
                                            .font(.system(size: 45))
                                            .foregroundStyle(.white)
                                    }
                                Text("Piyush")
                                    .font(.title3)
                                    .bold()
                            }
                       }
                        .padding(.vertical)
                        HStack(spacing: 20){
                            VStack{
                                Circle().fill(.blue)
                                    .frame(width: 70,height: 70)
                                    .overlay{
                                        Text("K")
                                            .font(.system(size: 45))
                                            .foregroundStyle(.white)
                                    }
                                Text("kumar")
                                    .font(.title3)
                                    .bold()
                            }
                            VStack{
                                Circle().fill(.yellow)
                                    .frame(width: 70,height: 70)
                                    .overlay{
                                        Text("S")
                                            .font(.system(size: 45))
                                            .foregroundStyle(.white)
                                    }
                                Text("shashwat")
                                    .font(.title3)
                                    .bold()
                            }
                            VStack{
                                Circle().fill(.orange)
                                    .frame(width: 70,height: 70)
                                    .overlay{
                                        Text("A")
                                            .font(.system(size: 45))
                                            .foregroundStyle(.white)
                                    }
                                Text("Ayush")
                                    .font(.title3)
                                    .bold()
                            }
                            VStack{
                                Circle().stroke( )
                                    .frame(width: 70,height: 70)
                                    .overlay{
                                        Image(systemName: "chevron.down")
                                            .font(.system(size: 45))
                                            .foregroundStyle(.blue)
                                    }
                                Text("more".capitalized)
                                    .font(.title3)
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
                        .scaledToFit()
                        .frame(maxWidth: .infinity, maxHeight: 420)
                        .clipped()
                    
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    HomeView()
}
