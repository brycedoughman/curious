//
//  SegmentedPreview.swift
//  curious
//
//  Created by Bryce Doughman on 3/27/25.
//

import Foundation
import SwiftUI

struct MessageRootView: View {
    @State private var selectedSegment = 0
    let segments = ["First", "Second", "Third"]

    var body: some View {
        VStack {
            Picker("Options", selection: $selectedSegment) {
                ForEach(0..<segments.count, id: \.self) { index in
                    Text(segments[index]).tag(index)
                }
            }
            .pickerStyle(.segmented)
            .padding()

            Spacer()

            Text("Selected: \(segments[selectedSegment])")
                .font(.headline)
        }
        .padding()
    }
}

#Preview {
    MessageRootView()
}
