//
//  Home.swift
//  V2er
//
//  Created by Seth on 2020/5/25.
//  Copyright © 2020 lessmore.io. All rights reserved.
//

import SwiftUI

struct FeedPage: StateView {
    @EnvironmentObject private var store: Store
    var state: FeedState {
        store.appState.feedState
    }
   var selecedTab: TabId
    
    var body: some View {
        contentView
            .opacity(selecedTab == .feed ? 1.0 : 0.0)
    }

    @ViewBuilder
    private var contentView: some View {
        LazyVStack(spacing: 0) {
            ForEach(state.newsInfo.items) { item in
                NavigationLink(destination: NewsDetailPage()) {
                    FeedItemView(data: item)
                }
            }
        }
        .onAppear {
            dispatch(action: FeedActions.FetchData.Start(autoStart: true))
        }
        .updatable(autoRefresh: state.autoLoad) {
            await run(action: FeedActions.FetchData.Start())
        } loadMore: {
            await run(action: FeedActions.LoadMore.Start(state.willLoadPage))
            return state.hasMoreData
        }
    }

}


//private func fetchData() async -> [String] {
//    await withCheckedContinuation { continuation in
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2 ) {
//            let persons = [
//                "new Person 1",
//                "new Person 2",
//                "new Person 3",
//                "new Person 4"
//            ]
//            continuation.resume(returning: persons)
//        }
//    }
//}

struct HomePage_Previews: PreviewProvider {
    static var selected = TabId.feed
    
    static var previews: some View {
        FeedPage(selecedTab: selected)
    }
}