//
//  testfor_gitApp.swift
//  testfor git
//
//  Created by dmitry shcherba on 29.05.2022.
//

import SwiftUI

@main
struct testfor_gitApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: testfor_gitDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
