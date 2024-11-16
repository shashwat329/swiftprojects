//
//  QRscannerView.swift
//  gpay
//
//  Created by shashwat singh on 16/11/24.
//

import SwiftUI

struct QRscannerView: View {
    @State private var scannedString: String = ""
    @State private var isScanning: Bool = true
    var body: some View {
        ZStack{
                
                VStack{
                    QRscanner(scannedString: $scannedString, isScanning: $isScanning)
                        .overlay {
                            VStack{
                                
                                Rectangle().frame(width: 300, height: 300)
                                    .opacity(0.0)
                                    .border(.white, width: 7)
                                RoundedRectangle(cornerRadius: 100)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 50)
                                    .overlay {
                                        Text("Upload from gallery")
                                            .foregroundStyle(.black)
                                    }
                                    .padding(40)
                            }
                            .frame(width: 900, height: 900)
                            .background(Color.gray.opacity(0.4))
                        }
                }
            if !isScanning && !scannedString.isEmpty {
                NavigationLink(destination: g2(scannedString: scannedString)) {
                    Text("Go to Next View")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}

#Preview {
    QRscannerView()
}
