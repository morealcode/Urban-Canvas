//
//  ArtworkViewModel.swift
//  Urban Canvas
//
//  Created by morealcode on 22/06/2026.
//

import Foundation

@Observable
class ArtworkViewModel {

    let artworks: [Artwork] = [

        Artwork(
            title: "Fresque Add Fuel",
            description:
                "[Add Fuel](https://www.addfuel.com) s’inspire ici des azulejos portugais pour créer une fresque qui mêle tradition décorative et langage graphique contemporain. Les motifs semblent se répéter, se fissurer et se recomposer, comme si la façade révélait plusieurs couches d’histoire. L’artiste transforme l’ornement en illusion visuelle, jouant avec la symétrie, le bleu, le blanc et les ruptures de rythme pour donner au mur une énergie à la fois élégante et urbaine. Elle donne au lieu une identité forte et mémorable.",
            illustration: "add_fuel",
            month: nil,
            year: 2017,
            author: Author(
                firstName: "Add",
                lastName: "Fuel",
                age: "45",
                picture: "add_fuel",
                origin: "Portugal",
                style: .mosaiques,
                website: "https://www.addfuel.com"
            ),
            type: .mosaiques,
            condition: .good,
            address: "135 Boulevard Vincent Auriol",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8319, longitude: 2.3620)
        ),

        Artwork(
            title: "Fresque Seth",
            description:
                "Dans cette fresque poétique, [Seth](https://seth.fr) met en scène l’enfance comme un passage vers l’imaginaire. Son personnage, souvent vu de dos ou absorbé par un monde invisible, invite le spectateur à projeter ses propres souvenirs. Les couleurs douces, la simplicité apparente du dessin et la relation avec l’architecture environnante créent une œuvre accessible, sensible et silencieuse, typique de l’univers de [Julien Malland](https://seth.fr). Elle enrichit le parcours parisien en donnant au lieu une identité forte et mémorable.",
            illustration: "seth_jeanne_darc",
            month: nil,
            year: 2017,
            author: Author(
                firstName: "Julien",
                lastName: "Malland",
                age: "54",
                picture: "seth",
                origin: "France",
                style: .mural,
                website: "https://seth.fr"
            ),
            type: .mural,
            condition: .good,
            address: "110 Rue Jeanne d’Arc",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8310, longitude: 2.3660)
        ),

        Artwork(
            title: "Fresque Conor Harrington",
            description:
                "[Conor Harrington](https://conorharrington.com) mêle dans cette fresque l’élégance de la peinture classique et la tension brute du street art contemporain. Ses personnages, souvent inspirés de l’histoire militaire ou aristocratique, semblent pris dans un mouvement interrompu, entre réalisme et éclatement pictural. Les coulures, les gestes rapides et la monumentalité du format donnent à l’œuvre une intensité dramatique qui contraste avec le quotidien du boulevard. Elle donne au lieu une identité forte et mémorable.",
            illustration: "conor_harrington",
            month: nil,
            year: 2017,
            author: Author(
                firstName: "Conor",
                lastName: "Harrington",
                age: "46",
                picture: "conor_harrington",
                origin: "Irlande",
                style: .mural,
                website: "https://conorharrington.com"
            ),
            type: .mural,
            condition: .good,
            address: "85 Boulevard Vincent Auriol",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8315, longitude: 2.3596)
        ),

        Artwork(
            title: "Lighthouse",
            description:
                "Cette œuvre attribuée à [Banksy](https://www.banksy.co.uk) transforme un simple mur de Marseille en scène poétique grâce à un jeu d’ombre et de lumière. Le motif du phare dialogue avec un élément réel de la rue, créant une illusion visuelle discrète mais très forte. La phrase intégrée à la composition ajoute une dimension intime, presque mélancolique, qui contraste avec la simplicité du dessin. L’œuvre rappelle la capacité du street art à révéler la poésie cachée d’un lieu ordinaire.",
            illustration: "banksy_lighthouse_marseille",
            month: "Mai",
            year: 2025,
            author: Author(
                firstName: "Banksy",
                lastName: nil,
                age: "52",
                picture: "banksy",
                origin: "Royaume-Uni",
                style: .stencil,
                website: "https://www.banksy.co.uk"
            ),
            type: .stencil,
            condition: .good,
            address: "1 Rue Félix Frégier",
            postalCode: "13007",
            city: "Marseille",
            coordinates: (latitude: 43.2908, longitude: 5.3594)
        ),

        Artwork(
            title: "Cours Julien Colors",
            description:
                "Située dans l’un des quartiers les plus créatifs de Marseille, cette fresque imaginaire célèbre l’énergie populaire du Cours Julien. Les formes colorées, les lettres superposées et les personnages stylisés évoquent les murs vivants du quartier, constamment transformés par les artistes locaux. L’œuvre fonctionne comme une synthèse de l’esprit marseillais : libre, expressif, spontané et profondément urbain. Elle donne à la rue une atmosphère de galerie ouverte.",
            illustration: "cours_julien_colors",
            month: nil,
            year: 2021,
            author: Author(
                firstName: "Manyoly",
                lastName: nil,
                age: "40",
                picture: "manyoly",
                origin: "France",
                style: .mural,
                website: "https://www.manyoly.com"
            ),
            type: .mural,
            condition: .good,
            address: "Cours Julien",
            postalCode: "13006",
            city: "Marseille",
            coordinates: (latitude: 43.2941, longitude: 5.3831)
        ),

        Artwork(
            title: "Darwin Factory",
            description:
                "Cette fresque installée dans l’univers alternatif de Darwin à Bordeaux s’inscrit dans un décor industriel réhabilité, entre culture urbaine, écologie et expérimentation collective. Les motifs organiques et mécaniques semblent dialoguer avec l’ancienne caserne, comme si la nature reprenait progressivement possession des murs. L’œuvre accompagne l’identité du lieu : un espace vivant, évolutif, engagé et ouvert aux pratiques artistiques contemporaines.",
            illustration: "darwin_factory_bordeaux",
            month: nil,
            year: 2020,
            author: Author(
                firstName: "Jeff",
                lastName: "Soto",
                age: "51",
                picture: "jeff_soto",
                origin: "États-Unis",
                style: .mural,
                website: "https://www.jeffsoto.com"
            ),
            type: .mural,
            condition: .good,
            address: "87 Quai des Queyries",
            postalCode: "33100",
            city: "Bordeaux",
            coordinates: (latitude: 44.8446, longitude: -0.5608)
        ),

        Artwork(
            title: "Pont de la Souillarderie",
            description:
                "Cette grande fresque nantaise évoque le voyage, la mobilité douce et la place de la nature dans la ville. Les formes végétales, les couleurs lumineuses et les silhouettes en mouvement donnent au passage urbain une atmosphère plus accueillante. L’œuvre transforme un espace fonctionnel en lieu de traversée sensible, où le piéton n’est plus seulement de passage mais invité à observer. Elle relie le quartier, ses habitants et son imaginaire collectif.",
            illustration: "pont_souillarderie_nantes",
            month: nil,
            year: 2023,
            author: Author(
                firstName: "Smoka",
                lastName: nil,
                age: "39",
                picture: "smoka",
                origin: "France",
                style: .mural,
                website: "https://www.supasmoka.com"
            ),
            type: .mural,
            condition: .good,
            address: "Pont de la Souillarderie",
            postalCode: "44300",
            city: "Nantes",
            coordinates: (latitude: 47.2451, longitude: -1.5198)
        ),

        Artwork(
            title: "Enfant Voyageur",
            description:
                "Dans cette fresque poétique, un enfant semble regarder au-delà du mur, comme s’il ouvrait une fenêtre vers un monde invisible. Le style tendre et coloré rappelle l’univers de [Seth](https://seth.fr), où l’enfance devient un symbole de rêve, de passage et d’imaginaire. L’œuvre joue avec l’architecture environnante et transforme la façade en récit silencieux. Elle invite les passants à ralentir, à lever les yeux et à retrouver une part d’émerveillement dans la ville.",
            illustration: "enfant_voyageur_lyon",
            month: nil,
            year: 2022,
            author: Author(
                firstName: "Julien",
                lastName: "Malland",
                age: "54",
                picture: "seth",
                origin: "France",
                style: .mural,
                website: "https://seth.fr"
            ),
            type: .mural,
            condition: .good,
            address: "Rue Burdeau",
            postalCode: "69001",
            city: "Lyon",
            coordinates: (latitude: 45.7705, longitude: 4.8341)
        ),

        Artwork(
            title: "Canut Pixel",
            description:
                "Cette mosaïque inspirée de l’univers d’[Invader](https://www.space-invaders.com) introduit une touche ludique dans les pentes de la Croix-Rousse. Le motif pixelisé dialogue avec les escaliers, les murs anciens et l’histoire ouvrière du quartier. À petite échelle, l’œuvre fonctionne comme un signe à découvrir, presque un secret urbain. Elle transforme la promenade en chasse visuelle et rappelle que le street art n’a pas toujours besoin d’être monumental pour marquer durablement un lieu.",
            illustration: "canut_pixel_lyon",
            month: nil,
            year: 2018,
            author: Author(
                firstName: "Invader",
                lastName: nil,
                age: "57",
                picture: "invader",
                origin: "France",
                style: .invaders,
                website: "https://www.space-invaders.com"
            ),
            type: .invaders,
            condition: .good,
            address: "Montée de la Grande-Côte",
            postalCode: "69001",
            city: "Lyon",
            coordinates: (latitude: 45.7718, longitude: 4.8330)
        ),

        Artwork(
            title: "Fragments du Nord",
            description:
                "Cette fresque lilloise joue sur une composition vive et fragmentée, mêlant portraits, formes géométriques et couleurs contrastées. Elle évoque l’énergie des anciennes zones industrielles transformées en lieux culturels, où les murs deviennent supports de mémoire et de création. Le regard du personnage central semble traverser la rue, créant un dialogue direct avec les passants. L’œuvre affirme une identité urbaine forte, populaire et contemporaine.",
            illustration: "fragments_du_nord_lille",
            month: nil,
            year: 2021,
            author: Author(
                firstName: "Sixe",
                lastName: "Paredes",
                age: "50",
                picture: "sixe_paredes",
                origin: "Espagne",
                style: .mural,
                website: "https://www.sixeparedes.com"
            ),
            type: .mural,
            condition: .good,
            address: "Rue de Wazemmes",
            postalCode: "59000",
            city: "Lille",
            coordinates: (latitude: 50.6238, longitude: 3.0523)
        ),

        Artwork(
            title: "Calligraphie Alsacienne",
            description:
                "Cette œuvre de calligraphie urbaine transforme une façade strasbourgeoise en page monumentale. Les lettres s’entrelacent comme des flux, entre écriture, abstraction et mouvement. Même lorsque le texte n’est pas immédiatement lisible, la composition transmet une impression de rythme et d’élan. La fresque crée un pont entre traditions manuscrites, culture contemporaine et espace public. Elle donne à la rue une présence élégante, presque musicale.",
            illustration: "calligraphie_alsacienne",
            month: nil,
            year: 2020,
            author: Author(
                firstName: "eL",
                lastName: "Seed",
                age: "44",
                picture: "el_seed",
                origin: "France / Tunisie",
                style: .calligraphie,
                website: "https://elseed-art.com"
            ),
            type: .calligraphie,
            condition: .good,
            address: "Rue du Jeu-des-Enfants",
            postalCode: "67000",
            city: "Strasbourg",
            coordinates: (latitude: 48.5839, longitude: 7.7416)
        ),

        Artwork(
            title: "Rose Béton",
            description:
                "Cette fresque toulousaine oppose la douceur d’une figure féminine à la dureté du béton urbain. Les couleurs chaudes rappellent la ville rose, tandis que les motifs graphiques ajoutent une dimension contemporaine et presque textile. L’œuvre joue sur la superposition des formes, des regards et des matières, comme un collage à grande échelle. Elle transforme la façade en portrait sensible et donne au quartier une présence visuelle forte, accueillante et mémorable.",
            illustration: "rose_beton_toulouse",
            month: nil,
            year: 2021,
            author: Author(
                firstName: "Miss",
                lastName: "Van",
                age: "52",
                picture: "miss_van",
                origin: "France",
                style: .mural,
                website: "https://www.missvan.com"
            ),
            type: .mural,
            condition: .good,
            address: "Rue Gramat",
            postalCode: "31000",
            city: "Toulouse",
            coordinates: (latitude: 43.6038, longitude: 1.4472)
        ),

        Artwork(
            title: "Montagne Mécanique",
            description:
                "Cette fresque grenobloise imagine une ville prise entre relief naturel et architecture industrielle. Les lignes mécaniques, les volumes découpés et les silhouettes urbaines rappellent les liens forts entre Grenoble, ses montagnes et ses innovations techniques. L’œuvre donne au mur une impression de plan animé, comme si la ville devenait une machine poétique. Elle crée un contraste intéressant entre paysage alpin, béton, mouvement et imagination graphique.",
            illustration: "montagne_mecanique_grenoble",
            month: nil,
            year: 2019,
            author: Author(
                firstName: "Mariusz",
                lastName: "Waras",
                age: "48",
                picture: "m_city",
                origin: "Pologne",
                style: .mural,
                website: "https://m-city.org"
            ),
            type: .mural,
            condition: .good,
            address: "Cours Berriat",
            postalCode: "38000",
            city: "Grenoble",
            coordinates: (latitude: 45.1884, longitude: 5.7148)
        ),

        Artwork(
            title: "Mémoire Océane",
            description:
                "Cette fresque niçoise développe un mouvement fluide inspiré par la mer, les vagues et les organismes marins. Les formes souples semblent parcourir la façade comme un courant invisible, créant une sensation de vitesse et de légèreté. L’œuvre dialogue avec l’identité méditerranéenne de la ville sans tomber dans l’illustration directe. Elle propose une vision abstraite du littoral, entre énergie naturelle, respiration urbaine et composition monumentale.",
            illustration: "memoire_oceane_nice",
            month: nil,
            year: 2022,
            author: Author(
                firstName: "Pantónio",
                lastName: nil,
                age: "50",
                picture: "pantonio",
                origin: "Portugal",
                style: .mural,
                website: "https://www.pantonio.net"
            ),
            type: .mural,
            condition: .good,
            address: "Rue Bonaparte",
            postalCode: "06300",
            city: "Nice",
            coordinates: (latitude: 43.6995, longitude: 7.2797)
        ),
    ]

    let authors: [Author] = [

        Author(
            firstName: "Add",
            lastName: "Fuel",
            age: "45",
            picture: "add_fuel-auth",
            origin: "Portugal",
            style: .mosaiques,
            website: "https://www.addfuel.com"
        ),

        Author(
            firstName: "Julien",
            lastName: "Malland",
            age: "54",
            picture: "seth",
            origin: "France",
            style: .mural,
            website: "https://seth.fr"
        ),

        Author(
            firstName: "Conor",
            lastName: "Harrington",
            age: "46",
            picture: "conor_harrington-auth",
            origin: "Irlande",
            style: .mural,
            website: "https://conorharrington.com"
        ),

        Author(
            firstName: "Banksy",
            lastName: nil,
            age: "52",
            picture: "banksy",
            origin: "Royaume-Uni",
            style: .stencil,
            website: "https://www.banksy.co.uk"
        ),

        Author(
            firstName: "Manyoly",
            lastName: nil,
            age: "40",
            picture: "manyoly",
            origin: "France",
            style: .mural,
            website: "https://www.manyoly.com"
        ),

        Author(
            firstName: "Jeff",
            lastName: "Soto",
            age: "51",
            picture: "jeff_soto",
            origin: "États-Unis",
            style: .mural,
            website: "https://www.jeffsoto.com"
        ),

        Author(
            firstName: "Smoka",
            lastName: nil,
            age: "39",
            picture: "smoka",
            origin: "France",
            style: .mural,
            website: "https://www.supasmoka.com"
        ),

        Author(
            firstName: "Invader",
            lastName: nil,
            age: "57",
            picture: nil,
            origin: "France",
            style: .invaders,
            website: "https://www.space-invaders.com"
        ),

        Author(
            firstName: "Sixe",
            lastName: "Paredes",
            age: "50",
            picture: "sixe_paredes",
            origin: "Espagne",
            style: .mural,
            website: "https://www.sixeparedes.com"
        ),

        Author(
            firstName: "eL",
            lastName: "Seed",
            age: "44",
            picture: "el_seed",
            origin: "France / Tunisie",
            style: .calligraphie,
            website: "https://elseed-art.com"
        ),

        Author(
            firstName: "Miss",
            lastName: "Van",
            age: "52",
            picture: "miss_van",
            origin: "France",
            style: .mural,
            website: "https://www.missvan.com"
        ),

        Author(
            firstName: "Mariusz",
            lastName: "Waras",
            age: "48",
            picture: "m_city",
            origin: "Pologne",
            style: .mural,
            website: "https://m-city.org"
        ),

        Author(
            firstName: "Pantónio",
            lastName: nil,
            age: "50",
            picture: "pantonio",
            origin: "Portugal",
            style: .mural,
            website: "https://www.pantonio.net"
        ),
    ]

    var artworksMission: [ArtworkTracking] = []

    var artworksDiscovered: [ArtworkTracking] = []

    func startMission(_ artworksQuantity: UInt8) {
        // Verify if asks 3 to 5 missions
        guard artworksQuantity >= 3 && artworksQuantity <= 5 else { return }

        // Return if mission already exists
        if !artworksMission.isEmpty { return }

        // MARK: Preparing data and limits

        // Get only artworks IDs that are not discovered
        var notDiscoveredArtworksID: Set<UUID> = Set(artworks.map { $0.id })
            .subtracting(artworksDiscovered.map { $0.artworkID })

        // Verify if there is still artworks to discover
        guard !notDiscoveredArtworksID.isEmpty else { return }

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

        // Update counter accordingly to available artworks to discover
        let missionQuantity = min(
            Int(artworksQuantity),
            notDiscoveredArtworksID.count
        )

        while newArtworks.count < missionQuantity
            && !notDiscoveredArtworksID.isEmpty
        {

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

    func endMission() {

        for artwork in artworksMission where artwork.discovered {
            
            // Is artwork already discovered ?
            let alreadyDiscovered = artworksDiscovered.contains {
                $0.artworkID == artwork.artworkID
            }

            // Append artwork if not discovered yet
            if !alreadyDiscovered {
                artworksDiscovered.append(artwork)
            }
        }

        artworksMission.removeAll()
    }
}
