//
//  tabBar.swift
//  newApp
//
//  Created by shashwat singh on 26/05/24.
//
import SwiftUI

enum Tab: String, CaseIterable {
    case link
    case book
    case plus
    case megaphone
    case person

    var systemImageName: String {
        switch self {
        case .link: return "link"
        case .book: return "book"
        case .plus: return "plus.rectangle.fill"
        case .megaphone: return "megaphone"
        case .person: return "person"
        }
    }
}

struct TabBar: View {
    @State private var selectedTab: Tab = .link

    var body: some View {
        VStack {
            Spacer()
            HStack {
                ForEach(Tab.allCases, id: \.self) { tab in
                    Button(action: {selectedTab = tab}) {
                        Image(systemName: tab.systemImageName)
                            .font(.system(size: tab == .plus ? 32:24))
                            .foregroundColor(tab == .plus ? .blue : (selectedTab == tab ? .black : .gray))
                            .padding()
                    }
                }
            }
            .frame(height: 60)
//            .background(.thinMaterial)
            .cornerRadius(10)
            .padding(.bottom,-10)
        }
    }
}

#Preview {
    TabBar()
}

