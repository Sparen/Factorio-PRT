# Sparen's Personal Rapid Transit (PRT) Mod for Factorio

This is a mod for Factorio that adds Personal Rapid Transit (and potential Mass Rapid Transit) capabilities. It aims to provide better personal trains and options for more convenient passenger transportation at greater startup cost.

What is PRT? PRT is a grade-separated mass transit system using small automated pods on guideways. In practice, systems like the Heathrow Pods and Morgantown PRT have shown that it can be a practical solution for transit where the ridership does not justify the costs of building, running, and maintaining more complex transit systems, such as light rail.

In vanilla Factorio, player transport across the map us highly dependent on three modes (will be four soon, since we'll be able to cross bodies of water with the new vehicle coming out) - Walking (Power Armor - Exoskeleton + Concrete/Stone Brick), Trains (including Personal Trains), and Automobiles (Cars and Tanks, the latter of which is mainly used to run over spawners). 

As most players know, personal trains can be a royal pain. If you lug around a train for the extra storage space (or use an engineering train full of resources to get around), it inevitably will block traffic while you do other tasks. If you carry the train with you, you need to manually refuel it, deconstruct it, etc. for every use. Although you can now call trains to you with the trains tab, it's still painful. Even with the help of many of the very good rail mods, it can still be annoying. The only good solution is the Autofill mod, which always chooses the worst fuel available and doesn't support rocket fuel at all (as of the time of writing).

This PRT mod aims to provide another alternative that is extremely quick and painless to use but expensive to implement.

# Mod Description

This mod implements a PRT-like system in Factorio. It is currently in development, so take the implementation details with a grain of salt - see the design plans for more details.

Essentially, this mod provides GUIs and vehicles for PRT support. PRT Pods are half the size of a standard locomotive and require no fuel whatsoever but require more expensive materials to craft and have numerous restrictions to ensure that they are used only for their intended purpose (refueling-free rapid passenger transportation). Do note that constructing the system is expensive - it requires investment into numerous stations and pods for maximum convenience, and it requires a well-designed deadlock-free rail network to function well.

The pods themselves will require solar panels, electric engines, steel, advanced circuits, and accumulators to craft. This means that automated production will require Automation 3. While they are technically battery powered using solar and accumulators, the reality is that they are just trains that require no fuel to run - i.e. you can plop one down in the middle of the night and ride it without problems.

PRT Pods will have a single GUI panel with two fields - a source station and a destination station. The source station is their home station - they will always return to this station. The destination station is where they are to go. They will spend some time at their destination and then automatically return to their source station. They will always run in automatic mode and their color cannot be changed. Most likely, they will not be coupleable with other trains. They will be unidirectional.

## Research Requirements

PRT requires the following Research:

* Automated Rail Transportation
* Electric Engine
* Electric Energy Accumulators
* Solar Energy

There is one research required to implement the PRT tab and all PRT items: Personal Rapid Transit. 

PRT will require 200 Red Science and 200 Green Science to research. Depending on how development goes, it may require Blue Science and possibly Purple Science as well.

## Usage

### Standard Usage

As with all passenger transportation systems, this mod is designed for use by passengers, whether in single player or multiplayer. Generally speaking, this mod is not worth using in games with a sparcely used rail network. This mod, however, provides excellent non-game-breaking (unlike teleportation) rapid transport in both singleplayer and multiplayer, games with congested rail networks (assuming proper signalling and investment into PRT infrastructure), and games where destinations are far apart. 

This mod is NOT a replacement for a comprehensive and well-designed railway network and for the most part, the most practical way to build a PRT network with this mod will involve building a well-designed and high-capacity railway network.

We will refer to the maximum number of players in a multiplayer game online at a given time as NUM_PLAYERS. 

#### Setting up a basic network

To set up a basic network, we will first need some track, some Source Stations, some Destination Stations, and some pods.

Pods all have a source station, which is where a player boards the pod. Players will, once in a pod, select their destination station. The pod will immediately head towards that station. After arriving, it will wait for a set amount of time, then return to its source station automatically. From a technical standpoint, the destination station will most likely be marked internally as the provided source station. It is possible for a player to change destination stations while inside the pod. No source station is required (technically) until a destination has been met, allowing the pod to be used as a personal train.

In most networks, due to low traffic, it will be feasible to place destination stations directly on the PRT mainline without requiring a branch off. As pods will return to their source station afterwards, the delay to other pods behind the first pod will be minimal at most. However, it is recommended that destination stations be seperate from loading and unloading stations to avoid waiting and potential deadlock. Additionally, as PRT pods are unidirectional and cannot be coupled, **there must be a valid exit from the destination station in the same direction the pod entered from** - i.e. ensure that destinations are on a turning loop or something similar.

Source stations will likely be located off the main line in locations that are convenient to the player. As they are the waiting area for unused pods, they must have at least NUM_PLAYERS signalled track units open (or however many pods may be kept at the station, if less due to very low traffic) to store pods. It is possible to have multiple source stations with the same name, though this has no benefit and may be potentially damaging due to the standard train pathing in Factorio. Having more pods than NUM_PLAYERS at a given station is generally a waste of resources, although in public multiplayer games it may be advisable if the number of players fluctuates.

INSERT EXAMPLE IMAGE HERE

#### Central Station

In expansive multiplayer games or in games where death via train collision is common, it may be useful to place a high-capacity Central Station at the spawn point. Designing a central station will typically be similar to that of other stations. It is highly recommended to give a central station excellent connections to easily transport players to wherever they wish to go on the network.

INSERT EXAMPLE HERE

## Compatibility with other mods

This mod is meant as a completely standalone mod. Effects in conjunction with other mods are unknown, but efforts are being made in the construction of the mod to ensure that as little as possible conflicts with other mods.

Specific interactions with related mods will be stated below.

### The Fat Controller

N/A

### FARL (Fully Automated Rail Layer)

N/A

## Future Plans

See the design document - Mass Rapid Transit versions may be implemented.