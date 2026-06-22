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
            title: "Liberté, Égalité, Fraternité",
            description: "Réalisée par Shepard Fairey après les attentats de Paris, cette fresque monumentale reprend la figure de Marianne comme symbole de résistance, d’unité et d’espoir collectif. Avec ses couleurs fortes, ses motifs graphiques et son style inspiré de l’affiche militante, l’œuvre transforme la façade en message public. Elle rappelle la devise française tout en rendant hommage aux victimes et à la capacité de la ville à se relever. Elle donne au lieu une identité forte et mémorable.",
            illustration: nil, // "liberte_egalite_fraternite",
            month: nil,
            year: 2016,
            author: Author(
                firstName: "Shepard",
                lastName: "Fairey",
                birthYear: 56,
                picture: "shepard_fairey",
                origin: "États-Unis",
                style: .mural,
                website: "https://obeygiant.com"
            ),
            type: .mural,
            condition: .good,
            address: "186 Rue Nationale",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8288, longitude: 2.3652)
        ),
        
        Artwork(
            title: "Love Won’t Tear Us Apart",
            description: "Avec cette fresque, D*Face détourne les codes de la romance et de la bande dessinée pour créer une scène à la fois tendre, ironique et mélancolique. Le couple enlacé semble figé entre passion et rupture, dans un univers pop aux contours marqués. Fidèle à son style satirique, l’artiste interroge les sentiments, l’image du couple et la culture populaire, tout en offrant au quartier une œuvre très identifiable. Elle enrichit le parcours parisien en donnant au lieu une identité forte et mémorable.",
            illustration: nil, // "love_wont_tear_us_apart",
            month: nil,
            year: 2017,
            author: Author(
                firstName: "D*Face",
                lastName: nil,
                birthYear: 48,
                picture: "dface",
                origin: "Royaume-Uni",
                style: .mural,
                website: "https://www.dface.co.uk"
            ),
            type: .mural,
            condition: .good,
            address: "10 Place Pinel",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8324, longitude: 2.3575)
        ),
        
        Artwork(
            title: "La Madre Secular 2",
            description: "Dans cette fresque monumentale, INTI compose une Madone laïque qui mêle références religieuses, symboles scientifiques et imaginaire latino-américain. La figure centrale, à la fois protectrice et mystérieuse, semble suspendue entre spiritualité et modernité. Les couleurs chaudes, les détails minutieux et la composition frontale donnent à l’œuvre une présence puissante, presque cérémonielle, au cœur du boulevard Vincent Auriol. Elle donne au lieu une identité forte et mémorable.",
            illustration: nil, // "la_madre_secular_2",
            month: nil,
            year: 2015,
            author: Author(
                firstName: "INTI",
                lastName: nil,
                birthYear: 44,
                picture: "inti",
                origin: "Chili",
                style: .mural,
                website: "https://inti.cl"
            ),
            type: .mural,
            condition: .good,
            address: "81 Boulevard Vincent Auriol",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8315, longitude: 2.3594)
        ),
        
        Artwork(
            title: "Fresque Ukraine",
            description: "Réalisée par C215 en soutien à l’Ukraine, cette fresque utilise la force directe du pochoir pour porter un message de solidarité. Le style précis de Christian Guémy met en avant un visage ou une figure chargée d’émotion, comme souvent dans son travail consacré aux personnes fragiles, résistantes ou invisibilisées. L’œuvre inscrit l’actualité dans l’espace public et rappelle que le street art peut aussi devenir un geste citoyen. Elle donne au lieu une identité forte et mémorable.",
            illustration: nil, // "c215_ukraine",
            month: "Mars",
            year: 2022,
            author: Author(
                firstName: "Christian",
                lastName: "Guémy",
                birthYear: 52,
                picture: "c215",
                origin: "France",
                style: .stencil,
                website: "https://www.c215.fr"
            ),
            type: .stencil,
            condition: .good,
            address: "131 Rue de Patay",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8249, longitude: 2.3702)
        ),
        
        Artwork(
            title: "Fresque C215",
            description: "Cette œuvre de C215 s’inscrit dans le parcours Boulevard Paris 13, où le pochoir dialogue avec les grandes fresques murales du quartier. Christian Guémy y déploie son langage habituel : traits précis, regard expressif, couleurs vibrantes et attention portée à l’humain. Même à l’échelle urbaine, son travail conserve une dimension intime, comme une rencontre furtive entre le passant, le mur et le personnage représenté. Elle donne au lieu une identité forte et mémorable.",
            illustration: nil, // "c215_boulevard_paris_13",
            month: nil,
            year: 2018,
            author: Author(
                firstName: "Christian",
                lastName: "Guémy",
                birthYear: 52,
                picture: "c215",
                origin: "France",
                style: .stencil,
                website: "https://www.c215.fr"
            ),
            type: .stencil,
            condition: .good,
            address: "141 Boulevard Vincent Auriol",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8320, longitude: 2.3625)
        ),
        
        Artwork(
            title: "PA_1525",
            description: "Cette mosaïque d’Invader, référencée PA_1525, reprend l’esthétique pixelisée qui a rendu l’artiste célèbre dans le monde entier. Installée près de la Place d’Italie, elle détourne l’imaginaire des jeux vidéo en l’inscrivant durablement dans la ville. Ses couleurs évoquant le drapeau italien créent un clin d’œil au lieu, tandis que le format discret invite les passants à lever les yeux et à redécouvrir l’espace urbain. Elle donne au lieu une identité forte et mémorable.",
            illustration: nil, // "pa_1525",
            month: nil,
            year: 2020,
            author: Author(
                firstName: "Invader",
                lastName: nil,
                birthYear: 57,
                picture: "invader",
                origin: "France",
                style: .invaders,
                website: "https://www.space-invaders.com"
            ),
            type: .invaders,
            condition: .good,
            address: "Place d’Italie",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8316, longitude: 2.3556)
        ),
        
        Artwork(
            title: "Invader - Boulevard Vincent Auriol",
            description: "Intégrée au parcours street art du 13e arrondissement, cette mosaïque d’Invader fonctionne comme un repère ludique dans le paysage urbain. L’artiste y applique son principe d’invasion pixelisée, inspiré des premiers jeux vidéo, en transformant un fragment de façade en signe reconnaissable. À la différence des fresques monumentales voisines, l’œuvre joue sur la surprise, la collection et le plaisir de la découverte. Elle donne au lieu une identité forte et mémorable.",
            illustration: nil, // "invader_vincent_auriol",
            month: nil,
            year: 2018,
            author: Author(
                firstName: "Invader",
                lastName: nil,
                birthYear: 57,
                picture: "invader",
                origin: "France",
                style: .invaders,
                website: "https://www.space-invaders.com"
            ),
            type: .invaders,
            condition: .good,
            address: "122 Boulevard Vincent Auriol",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8318, longitude: 2.3614)
        ),
        
        Artwork(
            title: "Fresque Add Fuel",
            description: "Add Fuel s’inspire ici des azulejos portugais pour créer une fresque qui mêle tradition décorative et langage graphique contemporain. Les motifs semblent se répéter, se fissurer et se recomposer, comme si la façade révélait plusieurs couches d’histoire. L’artiste transforme l’ornement en illusion visuelle, jouant avec la symétrie, le bleu, le blanc et les ruptures de rythme pour donner au mur une énergie à la fois élégante et urbaine. Elle donne au lieu une identité forte et mémorable.",
            illustration: nil, // "add_fuel",
            month: nil,
            year: 2017,
            author: Author(
                firstName: "Add",
                lastName: "Fuel",
                birthYear: 45,
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
            description: "Dans cette fresque poétique, Seth met en scène l’enfance comme un passage vers l’imaginaire. Son personnage, souvent vu de dos ou absorbé par un monde invisible, invite le spectateur à projeter ses propres souvenirs. Les couleurs douces, la simplicité apparente du dessin et la relation avec l’architecture environnante créent une œuvre accessible, sensible et silencieuse, typique de l’univers de Julien Malland. Elle enrichit le parcours parisien en donnant au lieu une identité forte et mémorable.",
            illustration: nil, // "seth_jeanne_darc",
            month: nil,
            year: 2017,
            author: Author(
                firstName: "Julien",
                lastName: "Malland",
                birthYear: 54,
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
            description: "Conor Harrington mêle dans cette fresque l’élégance de la peinture classique et la tension brute du street art contemporain. Ses personnages, souvent inspirés de l’histoire militaire ou aristocratique, semblent pris dans un mouvement interrompu, entre réalisme et éclatement pictural. Les coulures, les gestes rapides et la monumentalité du format donnent à l’œuvre une intensité dramatique qui contraste avec le quotidien du boulevard. Elle donne au lieu une identité forte et mémorable.",
            illustration: nil, // "conor_harrington",
            month: nil,
            year: 2017,
            author: Author(
                firstName: "Conor",
                lastName: "Harrington",
                birthYear: 46,
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
            description: "Cette œuvre attribuée à Banksy transforme un simple mur de Marseille en scène poétique grâce à un jeu d’ombre et de lumière. Le motif du phare dialogue avec un élément réel de la rue, créant une illusion visuelle discrète mais très forte. La phrase intégrée à la composition ajoute une dimension intime, presque mélancolique, qui contraste avec la simplicité du dessin. L’œuvre rappelle la capacité du street art à révéler la poésie cachée d’un lieu ordinaire.",
            illustration: nil, // "banksy_lighthouse_marseille",
            month: "Mai",
            year: 2025,
            author: Author(
                firstName: "Banksy",
                lastName: nil,
                birthYear: 52,
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
            description: "Située dans l’un des quartiers les plus créatifs de Marseille, cette fresque imaginaire célèbre l’énergie populaire du Cours Julien. Les formes colorées, les lettres superposées et les personnages stylisés évoquent les murs vivants du quartier, constamment transformés par les artistes locaux. L’œuvre fonctionne comme une synthèse de l’esprit marseillais : libre, expressif, spontané et profondément urbain. Elle donne à la rue une atmosphère de galerie ouverte.",
            illustration: nil, // "cours_julien_colors",
            month: nil,
            year: 2021,
            author: Author(
                firstName: "Manyoly",
                lastName: nil,
                birthYear: 40,
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
            description: "Cette fresque installée dans l’univers alternatif de Darwin à Bordeaux s’inscrit dans un décor industriel réhabilité, entre culture urbaine, écologie et expérimentation collective. Les motifs organiques et mécaniques semblent dialoguer avec l’ancienne caserne, comme si la nature reprenait progressivement possession des murs. L’œuvre accompagne l’identité du lieu : un espace vivant, évolutif, engagé et ouvert aux pratiques artistiques contemporaines.",
            illustration: nil, // "darwin_factory_bordeaux",
            month: nil,
            year: 2020,
            author: Author(
                firstName: "Jeff",
                lastName: "Soto",
                birthYear: 51,
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
            title: "Azulejos de Garonne",
            description: "Cette œuvre décorative inspirée des azulejos transforme une façade bordelaise en surface rythmée par les motifs, les répétitions et les ruptures graphiques. Les formes bleues et blanches rappellent les carreaux portugais tout en adoptant une écriture urbaine contemporaine. Le mur semble à la fois ancien et numérique, traditionnel et fragmenté. L’œuvre crée un lien entre patrimoine décoratif, abstraction graphique et énergie du street art actuel.",
            illustration: nil, // "azulejos_garonne",
            month: nil,
            year: 2019,
            author: Author(
                firstName: "Add",
                lastName: "Fuel",
                birthYear: 45,
                picture: "add_fuel",
                origin: "Portugal",
                style: .mosaiques,
                website: "https://www.addfuel.com"
            ),
            type: .mosaiques,
            condition: .good,
            address: "Rue Notre-Dame",
            postalCode: "33000",
            city: "Bordeaux",
            coordinates: (latitude: 44.8512, longitude: -0.5724)
        ),

        Artwork(
            title: "Pont de la Souillarderie",
            description: "Cette grande fresque nantaise évoque le voyage, la mobilité douce et la place de la nature dans la ville. Les formes végétales, les couleurs lumineuses et les silhouettes en mouvement donnent au passage urbain une atmosphère plus accueillante. L’œuvre transforme un espace fonctionnel en lieu de traversée sensible, où le piéton n’est plus seulement de passage mais invité à observer. Elle relie le quartier, ses habitants et son imaginaire collectif.",
            illustration: nil, // "pont_souillarderie_nantes",
            month: nil,
            year: 2023,
            author: Author(
                firstName: "Smoka",
                lastName: nil,
                birthYear: 39,
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
            description: "Dans cette fresque poétique, un enfant semble regarder au-delà du mur, comme s’il ouvrait une fenêtre vers un monde invisible. Le style tendre et coloré rappelle l’univers de Seth, où l’enfance devient un symbole de rêve, de passage et d’imaginaire. L’œuvre joue avec l’architecture environnante et transforme la façade en récit silencieux. Elle invite les passants à ralentir, à lever les yeux et à retrouver une part d’émerveillement dans la ville.",
            illustration: nil, // "enfant_voyageur_lyon",
            month: nil,
            year: 2022,
            author: Author(
                firstName: "Julien",
                lastName: "Malland",
                birthYear: 54,
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
            description: "Cette mosaïque inspirée de l’univers d’Invader introduit une touche ludique dans les pentes de la Croix-Rousse. Le motif pixelisé dialogue avec les escaliers, les murs anciens et l’histoire ouvrière du quartier. À petite échelle, l’œuvre fonctionne comme un signe à découvrir, presque un secret urbain. Elle transforme la promenade en chasse visuelle et rappelle que le street art n’a pas toujours besoin d’être monumental pour marquer durablement un lieu.",
            illustration: nil, // "canut_pixel_lyon",
            month: nil,
            year: 2018,
            author: Author(
                firstName: "Invader",
                lastName: nil,
                birthYear: 57,
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
            description: "Cette fresque lilloise joue sur une composition vive et fragmentée, mêlant portraits, formes géométriques et couleurs contrastées. Elle évoque l’énergie des anciennes zones industrielles transformées en lieux culturels, où les murs deviennent supports de mémoire et de création. Le regard du personnage central semble traverser la rue, créant un dialogue direct avec les passants. L’œuvre affirme une identité urbaine forte, populaire et contemporaine.",
            illustration: nil, // "fragments_du_nord_lille",
            month: nil,
            year: 2021,
            author: Author(
                firstName: "Sixe",
                lastName: "Paredes",
                birthYear: 50,
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
            description: "Cette œuvre de calligraphie urbaine transforme une façade strasbourgeoise en page monumentale. Les lettres s’entrelacent comme des flux, entre écriture, abstraction et mouvement. Même lorsque le texte n’est pas immédiatement lisible, la composition transmet une impression de rythme et d’élan. La fresque crée un pont entre traditions manuscrites, culture contemporaine et espace public. Elle donne à la rue une présence élégante, presque musicale.",
            illustration: nil, // "calligraphie_alsacienne",
            month: nil,
            year: 2020,
            author: Author(
                firstName: "eL",
                lastName: "Seed",
                birthYear: 44,
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
            description: "Cette fresque toulousaine oppose la douceur d’une figure féminine à la dureté du béton urbain. Les couleurs chaudes rappellent la ville rose, tandis que les motifs graphiques ajoutent une dimension contemporaine et presque textile. L’œuvre joue sur la superposition des formes, des regards et des matières, comme un collage à grande échelle. Elle transforme la façade en portrait sensible et donne au quartier une présence visuelle forte, accueillante et mémorable.",
            illustration: nil, // "rose_beton_toulouse",
            month: nil,
            year: 2021,
            author: Author(
                firstName: "Miss",
                lastName: "Van",
                birthYear: 52,
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
            description: "Cette fresque grenobloise imagine une ville prise entre relief naturel et architecture industrielle. Les lignes mécaniques, les volumes découpés et les silhouettes urbaines rappellent les liens forts entre Grenoble, ses montagnes et ses innovations techniques. L’œuvre donne au mur une impression de plan animé, comme si la ville devenait une machine poétique. Elle crée un contraste intéressant entre paysage alpin, béton, mouvement et imagination graphique.",
            illustration: nil, // "montagne_mecanique_grenoble",
            month: nil,
            year: 2019,
            author: Author(
                firstName: "Mariusz",
                lastName: "Waras",
                birthYear: 48,
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
            description: "Cette fresque niçoise développe un mouvement fluide inspiré par la mer, les vagues et les organismes marins. Les formes souples semblent parcourir la façade comme un courant invisible, créant une sensation de vitesse et de légèreté. L’œuvre dialogue avec l’identité méditerranéenne de la ville sans tomber dans l’illustration directe. Elle propose une vision abstraite du littoral, entre énergie naturelle, respiration urbaine et composition monumentale.",
            illustration: nil, // "memoire_oceane_nice",
            month: nil,
            year: 2022,
            author: Author(
                firstName: "Pantónio",
                lastName: nil,
                birthYear: 50,
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
        )
    ]
}
