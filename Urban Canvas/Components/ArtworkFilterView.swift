//
//  ArtworkFilterView.swift
//  Urban Canvas
//
//  Created by morealcode on 23/06/2026.
//

import SwiftUI

struct ArtworkFilterView: View {
    @Environment(\.dismiss) var dismiss

    @Binding var isShowing: Bool
    @Binding var selectedStyle: ArtworkStyle?

    var body: some View {

        VStack(alignment: .leading, spacing: 10) {

            Text("Liste des filtres")
                .fontWeight(.semibold)

            Text("Choisissez un type d'art")
                .padding(.bottom, 14)

            FilterButton(
                title: "Tous",
                isSelected: selectedStyle == nil
            ) {
                dismiss()
                withAnimation {
                    selectedStyle = nil
                }
            }

            ForEach(ArtworkStyle.allCases, id: \.self) { style in

                FilterButton(
                    title: style.rawValue,
                    isSelected: selectedStyle == style
                ) {
                    dismiss()
                    withAnimation {
                        selectedStyle = style
                    }
                }
            }

        }
        .frame(width: 300)
        .padding(24)
    }
}

struct FilterButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        if isSelected {
            Button(
                action: action,
                label: {
                    Text(title)
                        .fontWeight(.medium)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 13)
                }
            )
            .buttonStyle(.bordered)
            .foregroundStyle(Color.accentColor)
            .buttonSizing(.flexible)
        } else {
            Button(
                action: action,
                label: {
                    Text(title)
                        .fontWeight(.medium)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 13)
                }
            )
            .buttonStyle(.bordered)
            .foregroundStyle(.mainText)
            .buttonSizing(.flexible)
        }
    }
}

#Preview {
    @Previewable @State var isShowing: Bool = true
    @Previewable @State var selectedStyle: ArtworkStyle? = nil

    ArtworkFilterView(isShowing: $isShowing, selectedStyle: $selectedStyle)
}
