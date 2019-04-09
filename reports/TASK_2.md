Innopolis University, 2019  
S19 | Introduction to Artificial Intelligence | Assignment 1 | Task 2  
Gleb Petrakov | g.petrakov@innopolis.ru  

---

# Radtoad

## Performance measure

Player is being killed

<br/>

## Environment
Fallout 76 walkable terrain

**Partially observable**  
Rocks and other environmental stuff can block the sight. <br/>

**Multiagent (competitive)**  
The goal – to decrease enemy's HP. Collaborations with other radtoads not present. <br/>

**Deterministic**  
Attack and movement patterns are strictly defined. <br/>

**Sequential**  
Current radtoad decision may affect future ones (e. g. killing the player). <br/>

**Dynamic**  
Environment can be unpredictably changed by a player. <br/>

**Continuous**  
Location and rotation of a radtoad may vary. <br/>

<br/>

## Actuators

 * Tongue - attack to middle-distance HP reduce
 * Teeth - attack to short-distance HP reduce
 * Eggsack - drop eggs as proximity mines for delayed HP reduce
 * Legs - shorten distance to enemy
 * Throat - sound indicate of taken damage

<br/>

## Sensors
 * Eyes - detect enemy