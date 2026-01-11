## Status
🚧 In progress — core navigation and UI scaffolding implemented.  
Currently building trip list, itinerary management, and map integration.

# Travel Planner

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)

---

## Overview

### Description
A simple, centralized app for planning trips, organizing itinerary items, and accessing all trip details offline while on the go. Users can add activities, view them in a list or timeline, see locations on a map, and tap to open them in Apple Maps.

### App Evaluation
- **Category:**  
  Travel / Lifestyle

- **Mobile:**  
  - Map view to visualize itinerary locations  
  - Tap itinerary items to open them directly in Apple Maps  
  - Designed for quick, on-the-go usage during travel  
  - Offline support for areas without service  
  - More useful than a website because travelers need glanceable, mobile-first access

- **Story:**  
  - Solves the common problem of scattered travel notes, screenshots, PDFs, and messages  
  - Helps groups stay aligned on shared plans  
  - Provides a clean, centralized travel hub  
  - Future optional AI features could help with packing lists or day-by-day reorganization

- **Market:**  
  - Solo travelers, families, couples, students, and friend groups  
  - Large general audience — anyone who travels  
  - High value for travelers who like planning and structure

- **Habit:**  
  - Heavy usage during the planning phase  
  - Frequent usage during the trip itself  
  - Users both create (add/edit items) and consume (view itinerary)  
  - Not daily year-round, but high-intensity during relevant times

- **Scope:**  
  - V1 is simple and achievable:  
    - Create trip  
    - Add itinerary items  
    - View list/timeline  
    - Tap to open in Maps  
  - Offline storage is manageable  
  - Stretch features (sharing, AI, cloud sync) can be added later

---

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**
* User can create a new trip  
* User can add an itinerary item (title, date, time, location, notes)  
* User can view itinerary items in a list or timeline  
* User can edit an itinerary item  
* User can delete an itinerary item  
* User can tap an item to open its location in Apple Maps  
* User can view items on a map as pins  
* Itinerary data persists offline using local storage  

**Optional Nice-to-have Stories**
* AI trip suggestions (packing list, itinerary edits)  
* Multiple trips  
* Shared/collaborative trips  
* Add photos to itinerary items  
* Packing checklist  
* Sort/filter itinerary items by day or category  

---

### 2. Screen Archetypes

- **Home Screen** (Stream / Dashboard)
  * User can view a list of trips
  * User can tap a trip to open it
  * User can create a new trip

- **Trip Detail / Itinerary Screen** (Stream / Detail)
  * User can view itinerary items in a list or timeline
  * User can tap to view an individual itinerary item
  * User can open the map view for the trip
  * User can add a new itinerary item

- **Add/Edit Itinerary Item Screen** (Creation)
  * User can enter title, date, time, location, and notes for an itinerary item
  * User can save a new itinerary item
  * User can edit and save changes to an existing itinerary item

- **Map View Screen** (Stream / Map)
  * User can view all itinerary items with locations as pins on a map
  * User can tap a pin to view details for that itinerary item

- **Item Detail Screen** (Detail)
  * User can view full details for a single itinerary item
  * User can navigate to edit that item

---

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* **Trips tab** → Home Screen (Trip List)
* **Map tab** → Map View Screen (for the currently selected trip or default trip)

---

**Flow Navigation** (Screen to Screen)

- **Home Screen (Trip List)**
  * ⇒ Trip Detail / Itinerary Screen (when user taps a trip)

- **Trip Detail / Itinerary Screen**
  * ⇒ Add/Edit Itinerary Item Screen (when user taps “+”)
  * ⇒ Item Detail Screen (when user taps an itinerary item)
  * ⇒ Map View Screen (when user taps “Map”)

- **Add/Edit Itinerary Item Screen**
  * ⇒ Trip Detail / Itinerary Screen (after saving or canceling)

- **Map View Screen**
  * ⇒ Item Detail Screen (when user taps a pin)
  * ⇒ Trip Detail / Itinerary Screen (back / close)

- **Item Detail Screen**
  * ⇒ Add/Edit Itinerary Item Screen (when user taps “Edit”)
  * ⇒ Trip Detail / Itinerary Screen (back)

### 4. Wireframes

![831839AF-E9CF-45E8-B87B-7C374F9ED2DE_1_105_c](https://github.com/user-attachments/assets/c35fe8c5-7272-4237-90d8-fa2740618f9e)

