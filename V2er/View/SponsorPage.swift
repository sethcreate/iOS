//
//  SponsorPage.swift
//  V2er
//
//  Created by ghui on 2022/3/11.
//  Copyright © 2022 lessmore.io. All rights reserved.
//

import SwiftUI

struct SponsorPage: View {
    var body: some View {
        List {
            Section(header: Text("试试我们别的产品")) {
                Button {
                    "https://apps.apple.com/cn/app/id1613019131".openURL()
                } label: {
                    HStack(spacing: 8) {
                        Image("ulpb")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 56)
                            .cornerBorder(radius: 13, borderWidth: 1, color: Color.border.opacity(0.2))
                        VStack(alignment: .leading, spacing: 3) {
                            Text("试试双拼")
                            Text("App store首款双拼输入法练习软件，高效输入新体验 !")
                                .font(.footnote)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.vertical, 8)
                }
            }
//            .headerProminence(.increased)

        }
        .navBar("支持我们")
    }
}

struct SponsorPage_Previews: PreviewProvider {
    static var previews: some View {
        SponsorPage()
    }
}
