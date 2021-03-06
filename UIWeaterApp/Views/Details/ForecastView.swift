//
//  ForecastView.swift
//  UIWeaterApp
//
//  Created by Admin on 08.07.2022.
//

import SwiftUI

struct ForecastView: View {
    var body: some View {
        ScrollView {
            
        }
        .background(Color.bottonSheetBackground)
        .clipShape(RoundedRectangle(cornerRadius: 44))
        .overlay {
            // MARK: Bootom Sheet Separator
            Divider()
                .blendMode(.overlay)
                .background(Color.bottomSheetBorderTop)
                .frame(maxHeight: .infinity, alignment: .top)
                .clipShape(RoundedRectangle(cornerRadius: 44))
        }
        .overlay {
            // MARK: Drag Indicator
            RoundedRectangle(cornerRadius: 10)
                .fill(.black.opacity(0.3))
                .frame(width: 48, height: 5)
                .frame(height: 20)
                .frame(maxHeight: .infinity, alignment: .top)
        }
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastView()
            .background(Color.background)
            .preferredColorScheme(.dark)
    }
}
