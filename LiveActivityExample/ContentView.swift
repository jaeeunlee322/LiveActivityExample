//
//  ContentView.swift
//  LiveActivityExample
//
//  Created by 이재은 on 2022/12/11.
//

import SwiftUI
import ActivityKit

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Button("Start!") {
                let dynamicIslandWidgetAttributes = DynamicIslandWidgetAttributes(name: "example")
                let contentState = DynamicIslandWidgetAttributes.ContentState(value: 7)
                
                do {
                    let activity = try Activity<DynamicIslandWidgetAttributes>
                        .request(attributes: dynamicIslandWidgetAttributes,
                                 contentState: contentState)
                    print(activity)
                } catch {
                    print(error)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
