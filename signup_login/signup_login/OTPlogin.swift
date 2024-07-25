//
//  OTPlogin.swift
//  signup_login
//
//  Created by shashwat singh on 20/07/24.
//

import SwiftUI
import Combine

class OTPViewModel: ObservableObject {
    @Published var phoneNumber: String = ""
    @Published var otp: String = "" {
        didSet {
            if otp.count > 4 {
                otp = String(otp.prefix(4))
            }
        }
    }
    @Published var isOTPSent: Bool = false
    @Published var message: String = ""
    private var cancellables = Set<AnyCancellable>()

    func sendOTP() {
        // Implement API call to send OTP
        // Simulating success:
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.isOTPSent = true
            self.message = "OTP sent successfully"
        }
        
        // Handle failure:
        // self.message = "Failed to send OTP"
    }

    func verifyOTP() {
        // Implement API call to verify OTP
        // Simulating success:
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.message = "OTP verified successfully"
        }
        
        // Handle failure:
        // self.message = "Invalid OTP"
    }
}
struct OTPlogin: View {
    @StateObject private var viewModel = OTPViewModel()
      @State private var phoneNumber: String = ""
    @EnvironmentObject var settings: DarkmodeSettings
      var body: some View {
          ZStack{
              //background
              Color(settings.darkmode ? .black: .gray.opacity(0.03))
                  .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
              //content
              VStack(spacing: 20) {
                  if !viewModel.isOTPSent {
                      ZStack(alignment: .leading){
                          if phoneNumber.isEmpty{
                              Text("Enter your number")
                          }
                          
                          TextField("", text: $viewModel.phoneNumber)
                             
                      }
                      .keyboardType(.phonePad)
                      
                      .frame(height: 45)
                      .padding(.horizontal)
                      .background(settings.darkmode ? .gray : .secondary.opacity(0.2))
                      .cornerRadius(8)
                      .overlay{
                          RoundedRectangle(cornerRadius: 8)
                              .stroke(Color(.systemGray6),lineWidth: 2)
                      }
                          Button(action: {
                              viewModel.sendOTP()
                          }) {
                              Text("Send OTP")
                                  .foregroundColor(.white)
                                  .padding()
                                  .background(Color(hex: "#1A3636"))
                                  .cornerRadius(8)
                          }
                  }
                  else {
                      OTPInputView(otp: $viewModel.otp)
                      
                      Button(action: {
                          viewModel.verifyOTP()
                      }) {
                          Text("Verify OTP")
                              .foregroundColor(.white)
                              .padding()
                              .background(Color(hex: "#1A3636"))
                              .cornerRadius(8)
                      }
                  }
                  
                  Text(viewModel.message)
                      .foregroundColor(.green)
                      .padding()
              }
              .padding()
          }
      }
  }



struct OTPInputView: View {
    @Binding var otp: String
    let numberOfFields: Int = 4
    @FocusState private var focusedField: Int?
    @EnvironmentObject var settings : DarkmodeSettings
    var body: some View {
        HStack(spacing: 10) {
            ForEach(0..<numberOfFields, id: \.self) { index in
                TextField("", text: Binding(
                    get: {
                        if index < otp.count {
                            let startIndex = otp.index(otp.startIndex, offsetBy: index)
                            return String(otp[startIndex])
                        }
                        return ""
                    },
                    set: { newValue in
                        if newValue.count <= 1 {
                            if otp.count > index {
                                otp.remove(at: otp.index(otp.startIndex, offsetBy: index))
                            }
                            if !newValue.isEmpty {
                                otp.insert(contentsOf: newValue, at: otp.index(otp.startIndex, offsetBy: index))
                            }
                        }
                        if newValue.count == 1 && index < numberOfFields - 1 {
                            focusedField = index + 1
                        }
                        
                    }
                ))
                .keyboardType(.numberPad)
                .multilineTextAlignment(.center)
                .frame(width: 40, height: 40)
                .background(settings.darkmode ? .white.opacity(0.2): .gray.opacity(0.1))
                .cornerRadius(8)
                .focused($focusedField, equals: index)
            }
        }
        .onAppear {
            DispatchQueue.main.async {
                focusedField = 0
            }
        }
    }
}
                    
#Preview {
    OTPlogin()
        .environmentObject(DarkmodeSettings())
}
