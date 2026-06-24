//
//  ArtworkTracking.swift
//  Urban Canvas
//
//  Created by morealcode on 23/06/2026.
//

import Foundation

struct ArtworkTracking: Identifiable {
    let id: UUID = UUID()
    
    let artworkID: UUID
    var discovered: Bool = false
}

/*
 
 func startMission(_ artworksQuantity: UInt8) {
     // Verify if asks 3 to 5 missions
     guard artworksQuantity >= 3 && artworksQuantity <= 5 else { return }

     // Clear last started mission if exists
     // TODO: depends if button start mission showed even if mission not finished
     if !artworksMission.isEmpty {
         endMission()
     }

     // MARK: Preparing data and limits

     // Get only artworks IDs that are not discovered
     var notDiscoveredArtworksID: Set<UUID> = Set(artworks.map { $0.id })
         .subtracting(artworksDiscovered.map { $0.id })

     // Verify if there are still artworks to discover
     guard !notDiscoveredArtworksID.isEmpty else { return }

     // TODO: update data model in artworks with authors ID and update UI to filter based on ID.
     // ID must be identical between authors and artworks[x].author.id.

     let notDiscoveredArtworks = artworks.filter {
         notDiscoveredArtworksID.contains($0.id)
     }

     // Authors not yet used in the current mission
     var authorsNotYetUsedInCurrentMission: Set<UUID> = Set(
         notDiscoveredArtworks.map { $0.author.id }
     )

     // Styles not yet used in the current mission
     var stylesNotYetUsedInCurrentMission: Set<ArtworkStyle> = Set(
         notDiscoveredArtworks.map { $0.type }
     )

     // MARK: Selection algorithm

     var newArtworks: [ArtworkTracking] = []

     let missionQuantity = min(
         Int(artworksQuantity),
         notDiscoveredArtworksID.count
     )

     while newArtworks.count < missionQuantity && !notDiscoveredArtworksID.isEmpty {

         let availableArtworks = artworks.filter {
             notDiscoveredArtworksID.contains($0.id)
         }

         let artworksWithUnusedAuthorAndStyle = availableArtworks.filter {
             authorsNotYetUsedInCurrentMission.contains($0.author.id)
                 && stylesNotYetUsedInCurrentMission.contains($0.type)
         }

         let artworksWithUnusedAuthorOrStyle = availableArtworks.filter {
             authorsNotYetUsedInCurrentMission.contains($0.author.id)
                 || stylesNotYetUsedInCurrentMission.contains($0.type)
         }

         let selectedArtwork =
             artworksWithUnusedAuthorAndStyle.randomElement()
             ?? artworksWithUnusedAuthorOrStyle.randomElement()
             ?? availableArtworks.randomElement()

         guard let artwork = selectedArtwork else {
             break
         }

         newArtworks.append(
             ArtworkTracking(artworkID: artwork.id)
         )

         updateFilters(artwork)
     }

     print(newArtworks)

     // Update mission artworks to change UI
     artworksMission = newArtworks

     func updateFilters(_ artwork: Artwork) {
         notDiscoveredArtworksID.remove(artwork.id)
         authorsNotYetUsedInCurrentMission.remove(artwork.author.id)
         stylesNotYetUsedInCurrentMission.remove(artwork.type)
     }
 }
 
 */
