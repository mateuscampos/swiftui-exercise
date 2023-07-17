//
//  ContentView.swift
//  Test
//
//  Created by Mateus de Campos on 28/06/23.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var viewModel: ContentViewModel

    init(viewModel: ContentViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            VStack(spacing: 24) {
                if viewModel.shouldShowWarning {
                    Text("Store is over capacity")
                        .foregroundColor(.red)
                        .font(.largeTitle)
                }
                Text("\(viewModel.counter)")
                    .font(.system(size: 64))
            }
            VStack(spacing: 16) {
                HStack {
                    Button(action: viewModel.minusTouched) {
                        Text("-")
                            .foregroundColor(.white)
                            .font(.system(size: 26,
                                          weight: .semibold))
                            .padding(30)
                            .background(.blue)
                            .cornerRadius(15)
                    }
                    Button(action: viewModel.plusTouched) {
                        Text("+")
                            .foregroundColor(.white)
                            .font(.system(size: 26,
                                          weight: .semibold))
                            .padding(30)
                            .background(.blue)
                            .cornerRadius(15)
                    }
                    
                }
                Button(action: viewModel.resetTouched) {
                    Text("Reset")
                        .foregroundColor(.white)
                        .font(.system(size: 26,
                                      weight: .regular))
                        .padding(30)
                        .background(.blue)
                        .cornerRadius(15)
                }
            }
        }
    }
}

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        let vm = ContentViewModel()
        ContentView(viewModel: vm)
    }
}
