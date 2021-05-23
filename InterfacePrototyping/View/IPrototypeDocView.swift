//
//  IPrototypeDocView.swift
//  InterfacePrototyping
//
//  Created by Валерий Игнатьев on 23.05.21.
//

import SwiftUI

struct IPrototypeDocView: View {
    //не называть её viewModel, более осмысленным, в нашем случае это будет document (project).
    private let defaultElementSize: CGFloat = 50
    @ObservedObject var document: IPrototypeDoc
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                //map, превратит String в массив Array и аргументом которой является функция String($0)
                //обязательно нужен extresion или id:
                HStack {
                    ForEach(IPrototypeDoc.palette.map { String($0) }, id: \.self) { item in
                        Text(item)
                            .font(.system(size: defaultElementSize))
                    }
                }
                .padding(.horizontal, 30)
            }
            Rectangle().foregroundColor(.blue.opacity(0.4))
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let doc = IPrototypeDoc()
        IPrototypeDocView(document: doc)
    }
}
