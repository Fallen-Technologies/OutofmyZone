# Out of my Zone!
A simple DCS Script for creating No-Fly- Zones for each coalition. Rather than creating an individual trigger for each aircraft, checking if they're in enemy air space, and exploding just that one unit. This script will do it with just 1 trigger per zone!

### REQUIRES mist.lua!
Can be found here: https://github.com/mrSkortch/MissionScriptingTools

## HOW TO SETUP:
1. Create a ONCE trigger with a TIME MORE (1) and DO SCRIPT FILE mist.lua
2. Create a ONCE trigger with a TIME MORE (2) and DO SCRIPT FILE oomz.lua
3. Create a zone to cover the area you want to protect.

## HOW TO USE:
1. Create a REPETITIVE trigger
2. Conditions: PART OF COALITION IN ZONE [enemy coalition, zone name, ALL]
3. Actions: DO SCRIPT `outofmyzone('coalition to protect', 'zone name')` *[Ex: `outofmyzone('blue', 'Zone-1')` ]*
4. Repeat for as many zones as you want!

## WHAT WILL HAPPEN:
When an enemy unit crosses over the border of the zone, the script will create a 100 size explosion to destroy it. Then it will have pop up text saying "(Unit-Name) (Player-Name) entered enemy territory and has been eliminated" for 15 seconds


### EXAMPLE:
![Example](https://user-images.githubusercontent.com/51061164/182930426-6b4cd020-0d5a-46ca-a22d-193317864a96.PNG)
