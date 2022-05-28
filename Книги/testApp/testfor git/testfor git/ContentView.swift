//
//  ContentView.swift
//  testfor git
//
//  Created by dmitry shcherba on 29.05.2022.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: testfor_gitDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(testfor_gitDocument()))
    }
}


var a = 1

