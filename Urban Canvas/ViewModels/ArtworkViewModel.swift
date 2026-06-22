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
            description: "Fresque monumentale représentant Marianne, réalisée par Shepard Fairey en hommage aux victimes des attentats de Paris.",
            illustration: "liberte_egalite_fraternite",
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
            description: "Fresque de D*Face représentant un couple enlacé dans un style pop art sombre et satirique.",
            illustration: "love_wont_tear_us_apart",
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
            description: "Fresque monumentale d’INTI représentant une Madone laïque mêlant références sacrées et scientifiques.",
            illustration: "la_madre_secular_2",
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
            description: "Fresque de C215 réalisée en soutien à l’Ukraine.",
            illustration: "c215_ukraine",
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
            description: "Œuvre murale de C215 dans le parcours Boulevard Paris 13.",
            illustration: "c215_boulevard_paris_13",
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
            description: "Mosaïque géante d’Invader aux couleurs du drapeau italien, située près de la Place d’Italie.",
            illustration: "pa_1525",
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
            description: "Mosaïque urbaine d’Invader intégrée au parcours street art du 13e arrondissement.",
            illustration: "invader_vincent_auriol",
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
            description: "Fresque inspirée des azulejos portugais, avec des motifs graphiques et décoratifs.",
            illustration: "add_fuel",
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
            description: "Fresque poétique représentant un enfant, dans le style reconnaissable de Seth.",
            illustration: "seth_jeanne_darc",
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
            description: "Fresque monumentale mêlant peinture classique et énergie contemporaine du street art.",
            illustration: "conor_harrington",
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
            title: "Fresque Cryptik",
            description: "Œuvre calligraphique monumentale inspirée par les écritures, les symboles et la spiritualité.",
            illustration: "cryptik",
            month: nil,
            year: 2018,
            author: Author(
                firstName: "Cryptik",
                lastName: nil,
                birthYear: 42,
                picture: "cryptik",
                origin: "États-Unis",
                style: .calligraphie,
                website: "https://cryptik.com"
            ),
            type: .calligraphie,
            condition: .good,
            address: "171 Boulevard Vincent Auriol",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8325, longitude: 2.3648)
        ),
        
        Artwork(
            title: "Fresque Hownosm",
            description: "Fresque en noir, blanc et rouge, caractéristique du duo allemand Hownosm.",
            illustration: "hownosm",
            month: nil,
            year: 2017,
            author: Author(
                firstName: "Hownosm",
                lastName: nil,
                birthYear: 40,
                picture: "hownosm",
                origin: "Allemagne",
                style: .mural,
                website: "https://hownosm.com"
            ),
            type: .mural,
            condition: .good,
            address: "167 Boulevard Vincent Auriol",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8324, longitude: 2.3643)
        ),
        
        Artwork(
            title: "Fresque Hush",
            description: "Fresque inspirée par la culture urbaine et les figures féminines stylisées.",
            illustration: "hush",
            month: nil,
            year: 2017,
            author: Author(
                firstName: "Hush",
                lastName: nil,
                birthYear: 50,
                picture: "hush",
                origin: "Royaume-Uni",
                style: .mural,
                website: "https://www.hushartist.com"
            ),
            type: .mural,
            condition: .good,
            address: "169 Boulevard Vincent Auriol",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8324, longitude: 2.3645)
        ),
        
        Artwork(
            title: "Fresque DALeast",
            description: "Fresque animalière au style fragmenté et dynamique, typique de DALeast.",
            illustration: "daleast",
            month: nil,
            year: 2017,
            author: Author(
                firstName: "DALeast",
                lastName: nil,
                birthYear: 42,
                picture: "daleast",
                origin: "Chine",
                style: .mural,
                website: "https://www.daleast.com"
            ),
            type: .mural,
            condition: .good,
            address: "154 Boulevard Vincent Auriol",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8322, longitude: 2.3633)
        ),
        
        Artwork(
            title: "Fresque Tristan Eaton",
            description: "Fresque colorée mêlant graphisme, pop culture et composition monumentale.",
            illustration: "tristan_eaton",
            month: nil,
            year: 2016,
            author: Author(
                firstName: "Tristan",
                lastName: "Eaton",
                birthYear: 48,
                picture: "tristan_eaton",
                origin: "États-Unis",
                style: .mural,
                website: "https://tristaneaton.com"
            ),
            type: .mural,
            condition: .good,
            address: "47 Boulevard de l’Hôpital",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8390, longitude: 2.3630)
        ),
        
        Artwork(
            title: "Fresque M-City",
            description: "Fresque urbaine au style architectural et industriel, réalisée par l’artiste polonais M-City.",
            illustration: "m_city",
            month: nil,
            year: 2016,
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
            address: "122 Boulevard de l’Hôpital",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8352, longitude: 2.3599)
        ),
        
        Artwork(
            title: "Fresque Pantónio",
            description: "Fresque fluide et dynamique, souvent associée à des formes organiques et marines.",
            illustration: "pantonio",
            month: nil,
            year: 2017,
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
            address: "91 Boulevard Vincent Auriol",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8316, longitude: 2.3601)
        ),
        
        Artwork(
            title: "Fresque Vhils",
            description: "Œuvre murale réalisée avec la technique de gravure/destruction de surface propre à Vhils.",
            illustration: "vhils",
            month: nil,
            year: 2017,
            author: Author(
                firstName: "Alexandre",
                lastName: "Farto",
                birthYear: 39,
                picture: "vhils",
                origin: "Portugal",
                style: .mural,
                website: "https://www.vhils.com"
            ),
            type: .mural,
            condition: .good,
            address: "173 Rue du Château des Rentiers",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8265, longitude: 2.3696)
        ),
        
        Artwork(
            title: "Fresque ROA",
            description: "Fresque animalière en noir et blanc, caractéristique du street artiste belge ROA.",
            illustration: "roa",
            month: nil,
            year: 2016,
            author: Author(
                firstName: "ROA",
                lastName: nil,
                birthYear: 50,
                picture: "roa",
                origin: "Belgique",
                style: .mural,
                website: "https://www.roaweb.com"
            ),
            type: .mural,
            condition: .good,
            address: "Rue Marguerite Duras",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8273, longitude: 2.3793)
        ),
        
        Artwork(
            title: "Fresque eL Seed",
            description: "Œuvre de calligraffiti mêlant calligraphie arabe et art mural contemporain.",
            illustration: "el_seed",
            month: nil,
            year: 2013,
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
            condition: .bad,
            address: "5 Rue Fulton",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8336, longitude: 2.3760)
        ),
        
        Artwork(
            title: "Fresque Sainer",
            description: "Fresque monumentale réalisée par Sainer, artiste polonais connu pour ses compositions figuratives.",
            illustration: "sainer",
            month: nil,
            year: 2016,
            author: Author(
                firstName: "Przemek",
                lastName: "Blejzyk",
                birthYear: 37,
                picture: "sainer",
                origin: "Pologne",
                style: .mural,
                website: "https://www.sainer.org"
            ),
            type: .mural,
            condition: .good,
            address: "13 Avenue de la Porte d’Italie",
            postalCode: "75013",
            city: "Paris",
            coordinates: (latitude: 48.8174, longitude: 2.3608)
        )
    ]
}
