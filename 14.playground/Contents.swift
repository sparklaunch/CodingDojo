import Foundation

let camille = [
    "health": 575.6,
    "healthRegen": 1.7,
    "mana": 338.8,
    "manaRegen": 1.63,
    "melee": 125,
    "attackDamage": 60,
    "attackSpeed": 0.625,
    "armor": 26,
    "magicResistance": 32.1,
    "movementSpeed": 340
]

print(camille["health", default: 100])
print(camille["movementSpeed", default: 100])
