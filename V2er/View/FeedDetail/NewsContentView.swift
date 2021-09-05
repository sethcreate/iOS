//
//  NewsContentView.swift
//  V2er
//
//  Created by Seth on 2021/7/10.
//  Copyright © 2021 lessmore.io. All rights reserved.
//

import SwiftUI

struct NewsContentView: View {
    var contentInfo: FeedDetailInfo.ContentInfo?

    init(_ contentInfo: FeedDetailInfo.ContentInfo?) {
        self.contentInfo = contentInfo
    }
    
    var body: some View {
        VStack {
            Text(contentInfo?.html ?? .default)
                .font(.subheadline)
            Divider()
        }
        .padding(.vertical, 10)
    }
}

struct NewsContentView_Previews: PreviewProvider {
    static var previews: some View {
        NewsContentView(nil)
    }
}