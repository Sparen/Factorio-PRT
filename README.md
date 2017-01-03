# Sparen's Personal Rapid Transit (PRT) Mod for Factorio

This is a mod for Factorio that adds Personal Rapid Transit capabilities.

What is PRT? PRT is a grade-separated mass transit system using small automated pods on guideways. In practice, systems like the Heathrow Pods and Morgantown PRT have shown that it can be a practical solution for transit where the ridership does not justify the costs of building, running, and maintaining more complex transit systems, such as light rail.

In vanilla Factorio, player transport across the map us highly dependent on three modes (will be four soon, since we'll be able to cross bodies of water with the new vehicle coming out) - Walking (Power Armor - Exoskeleton + Concrete/Stone Brick), Trains (including Personal Trains), and Automobiles (Cars and Tanks, the latter of which is mainly used to run over spawners). 

As most players know, personal trains are a royal pain. If you lug around a train as extra storage space, it inevitably will block traffic while you do other tasks. If you carry the train with you, you need to manually refuel it, deconstruct it, etc. for every use. Although you can now call trains to you, it's still painful. Even with the help of many of the very good rail mods, it can still be annoying.

This PRT mod aims to provide another alternative.

# Mod Description

This mod implements grade-separated PRT in Factorio. It is currently in development, so take the implementation details with a grain of salt - see the design plans for more details.

Essentially, this mod provides GUIs, track, stations, and vehicles for PRT support. Do note that constructing the system is expensive - the system is expensive to build and requires investment into numerous stations and pods for maximum convenience.

## Research Requirements

PRT requires the following Research:

* Automated Rail Transportation
* Electric Engine
* Electric Energy Accumulators
* Solar Energy

There is one research required to implement the PRT tab and all PRT items: Personal Rapid Transit. 

PRT will require 200 Red Science and 200 Green Science to research. 

## Usage

### Standard Usage

As with all passenger transportation systems, this mod is designed for use by passengers, whether in single player or multiplayer. Generally speaking, this mod is not worth using in games with a sparcely used rail network. This mod, however, provides excellent non-game-breaking (unlike teleportation) rapid transport in multiplayer, games with congested rail networks, and games where destinations are far apart. 

This mod is NOT a replacement for a comprehensive and well-designed railway network and for the most part, the most practical way to build a PRT network will involve building PRT track adjacent to a railway network.

We will refer to the maximum number of players in a multiplayer game online at a given time as NUM_PLAYERS. 

#### Setting up a basic network

To set up a basic network, we will first need some track, some PRT Source Stations, some PRT Destination Stations, and some pods. Pods work by traveling on PRT track, which is signalled in the exact same way as standard railway. 

Pods all have a source station, which is where a player boards the pod. Players will, once in a pod, select their destination station. The pod will immediately head towards that station. After arriving, it will wait for the player to disembark. Once the player has disembarked, the pod will return to its source station automatically. It is possible for a player to change destination stations while inside the pod. Source stations cannot be selected as destination stations and vice versa.

In most networks, due to low traffic, it will be feasible to place destination stations directly on the PRT mainline without requiring a branch off. As pods will return to their source station afterwards, the delay to other pods behind the first pod will be minimal at most.

Source stations, in contrast, must be located off the main line. As they are the waiting area for unused pods, they must have at least NUM_PLAYERS signalled track units open (or however many pods may be kept at the station, if less due to very low traffic) to store pods. It is possible to have multiple source stations with the same name, though this has no benefit. Having more pods than NUM_PLAYERS is generally a waste of resources, although in public multiplayer games it may be advisable if the number of players fluctuates.

As a note, PRT pods are unidirectional and cannot be coupled. Turning loops are therefore required. It is recommended to build stations such that a train can enter a station from any direction and leave from any direction.

INSERT EXAMPLE IMAGE HERE

#### Using Bridges

To cross highways and railways, bridges will be required. These have the same spans as typical underground belts, with supports on both ends of a six-tile long span. Therefore, four tiles can be crossed. 

EXAMPLE CROSSING A SINGLE RAILWAY TRACK

EXAMPLE CROSSING A STANDARD RAILWAY SETUP

EXAMPLE CROSSING A SMALL LAKE

EXAMPLE CROSSING A "RIVER"

EXAMPLE CROSSING A FOREST

#### Central Station

In expansive multiplayer games or in games where death via train collision is common, it may be useful to place a high-capacity Central Station at the spawn point. Designing a central station will typically be similar to that of other stations, but if multiple players want to access the system at the same time, it may be more efficient to build multiple source stations with the same name so that multiple players can board at the same time instead of waiting for one player to board, select a destination, and have the next pod enter the source station. It is highly recommended to give a central station excellent connections to easily transport players to wherever they wish to go on the PRT network.

INSERT SERIAL EXAMPLE HERE

INSERT PARALLEL EXAMPLE HERE

## Compatibility with other mods

This mod is meant as a completely standalone mod. Effects in conjunction with other mods are unknown, but efforts are being made in the construction of the mod to ensure that as little as possible conflicts with other mods.

Specific interactions with related mods will be stated below.

### The Fat Controller

N/A

### FARL (Fully Automated Rail Layer)

N/A

## Future Plans

TODO