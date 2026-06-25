# Urban Canvas

Urban Canvas is an iOS application built with **SwiftUI** that allows users to discover, explore, and view urban street art pieces using static data.

The project is a **Proof of Concept** designed to validate the user experience, interface, and main navigation flows before the potential implementation of a backend.

## Features

The application provides a complete street art discovery experience:

- browse a list of urban artworks;
- view a detailed page for each artwork;
- filter artworks by art type;
- explore artworks on an interactive map;
- access an artist directory;
- automatically generate discovery missions;
- track the progress of artworks discovered during a mission.

## Artwork Exploration

The main screen allows users to browse artworks in two ways:

- a list view displaying the title, image, and location;
- a map view showing artworks as points of interest.

From either the list or the map, users can open a detail page containing:

- the title;
- a main image;
- a long description;
- the art type;
- the conservation status;
- the date;
- the artist;
- the textual location.

## Filtering

A filter system allows users to display artworks based on their art type.

When a filter is selected, the displayed data is immediately updated in the interface.

## Artists

The application includes an artist directory presented as cards.

Each card displays:

- the name;
- the age, when available;
- the origins;
- the preferred art type;
- a profile picture or a placeholder image.

## Discovery Missions

Urban Canvas includes a Mission mode accessible from the main navigation.

A mission is an automatically generated selection of 3 to 5 artworks based on mocked data. It allows users to discover several artwork detail pages within the application.

Mission generation follows these rules:

- no artwork should appear more than once;
- repeated artists are avoided as much as possible;
- at least two different art types must be included.

Mission artworks are displayed as numbered cards with their main information. Users can open an artwork detail page and then mark it as discovered.

Progress is displayed in real time, for example:

```text
2 artworks discovered out of 5
```

When all artworks have been discovered, a success message is displayed:

```text
Mission completed! You discovered 5 urban artworks.
```

A button allows users to generate a new mission at any time.

## Technical Constraints

- iPhone application in portrait orientation.
- Interface built exclusively with SwiftUI.
- Data hardcoded in the project.
- No backend.
- No authentication.
- No local database.
- Images embedded in the application or loaded with `AsyncImage`.
- Main navigation using `TabView`.
- Hierarchical navigation using `NavigationStack`.
- Interactive map using MapKit.

## Technologies Used

- Swift
- SwiftUI
- MapKit
- AsyncImage

## Installation

Clone the project:

```bash
git clone https://github.com/morealcode/urban-canvas.git
```

Open the project in Xcode:

```bash
open UrbanCanvas.xcodeproj
```

Run the application on an iPhone simulator with `Cmd + R`.

## POC Scope

This project intentionally does not include user accounts, authentication, persistent storage, a backend, or remote synchronization.

The goal is to validate the interface, navigation, and local state management around mocked data.

## Possible Improvements

The project could later evolve into a complete application with:

- saved discovered artworks;
- favorites;
- text search;
- user-submitted artworks;
- real-time geolocation;
- discovery routes;
- remote API;
- persistent storage.
