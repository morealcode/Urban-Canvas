//
//  MissionView.swift
//  Urban Canvas
//
//  Created by morealcode on 23/06/2026.
//

import SwiftUI

struct MissionView: View {
    @Environment(ArtworkViewModel.self) private var artworkViewModel
    
    var body: some View {
        Text("Mission!")
        Text("Nombre: \(artworkViewModel.artworks.count)")
        /*
        
        if artworksDiscovered.count < artworks.count
         
            Pas de nouvelles artwork à découvrir
         
        else if artworks mission vide
        
        Bouton "Nouvelle mission"
         
        
        else
         
        Afficher progression de la mission :
        "2 œuvres découvertes sur 5"
         
        Cartes numérotées:
         titre
         image
         type
         auteur
         localisation texte
         bouton détail > vue détail
         bouton discovered (true/false)
        
        */
        
        /*
        
         Bouton discovered action
         
         changer l'oeuvre to discovered true
         
         if chaque oeuvre sont discovered
            
            endMission()
            
            afficher actionDialog message de réussite
            "Mission terminée ! Vous avez découvert 5 œuvres urbaines."
        
        */
    }
}

#Preview {
    @Previewable @State var artworkViewModel: ArtworkViewModel = ArtworkViewModel()
    
    MissionView()
        .environment(artworkViewModel)
}
