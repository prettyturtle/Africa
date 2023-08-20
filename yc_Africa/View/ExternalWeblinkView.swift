//
//  ExternalWeblinkView.swift
//  yc_Africa
//
//  Created by yc on 2023/08/21.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!) { 
                        Text(animal.name)
                    }
                }
                .foregroundColor(.accentColor)
            } //: HSTACK
        } //: BOX
    }
}

// MARK: - PREVIEW
struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWeblinkView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
