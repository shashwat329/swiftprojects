//
//  ContentView.swift
//  GithubAPI
//
//  Created by shashwat singh on 02/12/24.
//

//import SwiftUI
//
//struct ContentView: View {
//    @State private var userDetail: UserDetail?
//    var body: some View {
//        VStack {
//            AsyncImage(url: URL(string: userDetail?.avatarUrl ?? "")) { image in
//                image
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .clipShape(Circle())
//            } placeholder: {
//                Circle()
//                    .foregroundColor(.gray)
//            }
//            .frame(width: 200)
//            Text(userDetail?.login ?? "placeHolder".capitalized)
//                .font(.largeTitle)
//            Text(userDetail?.bio ?? "biohijhg hjgghjh jghjghj")
//            Spacer()
//        }
//        .padding()
//        .task{
//            do{
//                userDetail = try await getUserDetail()
//            }
//            catch GHError.invalidURl{
//                print("Invalid URL")
//            }
//            catch GHError.invalidResponse{
//                print("Invalid Response")
//            }
//            catch{
//                print("Exception \(error)")
//            }
//        }
//    }
//    func getUserDetail() async throws -> UserDetail{
//         let endpoint = "https://api.github.com/users/twostraws";
//        guard let url = URL(string: endpoint) else{
//            throw GHError.invalidURl
//        }
//        let (data,response) = try await URLSession.shared.data(from: url)
//        guard let response = response as? HTTPURLResponse , response.statusCode == 200 else{
//            throw GHError.invalidResponse
//        }
//        do{
//            let decoder = JSONDecoder()
//            decoder.keyDecodingStrategy = .convertFromSnakeCase
//            let userDetail = try decoder.decode(UserDetail.self, from: data)
//            return userDetail
//            
//        }
//        catch{
//            throw GHError.invalidData
//        }
//    }
//}
//
//enum GHError: Error{
//    case invalidURl
//    case invalidResponse
//    case invalidData
//}
////this is the modal of this api call
//struct UserDetail : Decodable{
//   let login:String
//    let avatarUrl: String
//    let bio: String
//}
//
//#Preview {
//    ContentView()
//}
