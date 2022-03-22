//
//  ContentView.swift
//  DocumentUI
//
//  Created by Matthew Garlington on 3/21/22.
//

import SwiftUI

struct ContentView: View {
    @State var listTitle: [String] = ["Sketch report", "Estimate", "Comparison Estimate", "Contract", "Material Order", "Summary Report", "Labor Report", "Pre-Start Checklist"]
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(listTitle, id: \.self) { title in
                    HeaderView(headerTitle: title)
                    LazyHGrid(rows: [GridItem(.fixed(100), spacing: 0, alignment: .leading)], alignment: .center, spacing: 20) {
                        ForEach(1...2, id: \.self) { row in
                            VStack(alignment: .leading) {
                            Rectangle()
                                .fill(Color.gray.opacity(0.1))
                                .frame(width: 150, height: 200)
                                .padding()
                                Text("Title")
                                    .padding([.horizontal])
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var headerTitle: String
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .fill(.gray.opacity(0.1))
                .frame(height: 50)
            Text(headerTitle)
                .fontWeight(.bold)
                .padding()
        }
    }
}
