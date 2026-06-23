//
//  AuthorListView.swift
//  Urban Canvas
//
//  Created by morealcode on 23/06/2026.
//

import SwiftUI

struct AuthorListView: View {
    let authors: [Author]

    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 22),
        GridItem(.flexible()),
    ]

    var body: some View {

        ScrollView {

            LazyVGrid(columns: columns, spacing: 22) {

                ForEach(authors) { author in

                    VStack(spacing: 13) {
                        Image(author.picture ?? "placeholder")
                            .resizable()
                            .scaledToFill()
                            .clipShape(Circle())
                            .frame(width: 65, height: 65)
                            .padding(.top, 10)

                        Text("\(author.firstName) \(author.lastName ?? "")")
                            .font(.callout)
                            .bold()
                            .foregroundStyle(Color.accentColor)

                        VStack {
                            HStack(spacing: 0) {
                                Text("Age :")
                                    .font(.caption2)
                                    .bold()
                                    .foregroundStyle(Color.mainText)
                                Text(author.age)
                                    .font(.caption2)
                                    .foregroundStyle(Color.mainText)
                            }
                            HStack(spacing: 0) {
                                Text("Origines :")
                                    .font(.caption2)
                                    .bold()
                                    .foregroundStyle(Color.mainText)
                                Text(author.origin)
                                    .font(.caption2)
                                    .foregroundStyle(Color.mainText)
                            }
                            HStack(spacing: 0) {
                                Text("Style :")
                                    .font(.caption2)
                                    .bold()
                                    .foregroundStyle(Color.mainText)
                                Text(author.style.rawValue)
                                    .font(.caption2)
                                    .foregroundStyle(Color.mainText)
                            }
                        }

                        Button {
                            // TODO: Open website in browser
                        } label: {
                            Text("Site web")
                                .font(.caption2)
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(Color.secondOrange)
                        .buttonSizing(.flexible)
                        .padding(.vertical, 10)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 20)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 26))
                }
            }
            .padding(.vertical, 22)
        }
        .padding(.horizontal, 22)
        .background(Color.backgroundGray)
    }
}

#Preview {
    @Previewable var authors = ArtworkViewModel().authors

    NavigationStack {
        AuthorListView(authors: authors)
    }
}
