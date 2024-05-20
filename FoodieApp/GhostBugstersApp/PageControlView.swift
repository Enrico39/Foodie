//
//  PageControlView.swift
//  GhostBugstersApp
//
//  Created by Linar Zinatullin on 23/10/23.
//

import SwiftUI

struct PageControl: View{
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    var body: some View{
        HStack{
            ForEach((0..<numberOfPages), id: \.self){ page in
                Circle()
                    .frame(width: 8,height: 8)
                    .foregroundColor(page == currentPage ? Color(hex: 0x315771) : .gray)
                
            }
        }
    }
}
