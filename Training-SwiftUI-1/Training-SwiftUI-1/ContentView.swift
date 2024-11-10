//
//  ContentView.swift
//  Training-SwiftUI-1
//
//  Created by Jose Luna on 11/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var counter: Int = 0
    
    var body: some View {
        VStack {
            Text("Counter-> \(counter)")
            
            Button {
                counter+=1
            } label: {
                Text("Increment")
            }
            
            SecondView(counter: $counter)
        }
        .frame(width: 500, height: 500)
        .padding()
    }
}

struct SecondView: View {
    @Binding private var counter: Int
    @StateObject private var viewModel: ViewModelTuani = .init()
    
    init(counter: Binding<Int>) {
        _counter = counter
    }
    
    var body: some View {
        VStack {
            Button {
                counter+=1
            } label: {
                Text("Increment from second view")
            }
            
            Text("View model counter -> \(viewModel.number)")
            
            Button {
                viewModel.incrementValue()
            } label: {
                Text("Increment viewModel counter")
            }
        }
    }
}

final class ViewModelTuani: ObservableObject {
    @Published var number: Int = 0
    
    func incrementValue() {
        number += 1
    }
}

#Preview {
    ContentView()
}
