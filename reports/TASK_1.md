Innopolis University, 2019  
S19 | Introduction to Artificial Intelligence | Assignment 1 | Task 1  
Gleb Petrakov | g.petrakov@innopolis.ru  

---

# Automated airport check-in counter

<br/>

## Performance measure
Valid passengers with valid documents (and visa, if required) with allowed baggage are able to complete check-in procedure with receiving any of necessary documents.

<br/>

## Environment
Airport public check-in terminal

**Fully observable**  
All relevant aspects to make a decision can be acquired. <br/>

**Multiagent (collaborative)**  
The other agent - passenger. <br/>

**Nondeterministic**  
Passenger may suddenly interrupt the check-in process. <br/>

**Sequential**  
The stages come one after one. <br/>

**Dynamic**  
Passenger may change the system while the agent is percepting - take passport away from scanner or pinch baggage. <br/>

**Discrete**  
The states are predefined and cannot variate. <br/>

<br/>

## Actuators
 * **Interactive GUI** - to direct commands to passengers
 * **Printer(s) for barcodes / tags / boarding passes** - to print necessary documents
 * **Baggage transporter** - to transfer baggage
 * **Inforamtion screen** - to maintain passenger queue and show flight information

<br/>
 
## Sensors
 * **Interactive GUI** - to receive commands and information from passenger
 * **Scanner for documents** - to scan and verify possible needed documents
 * **Camera** - to verify document-passenger relation
 * **Scales** - to verify baggage weight
 * **Measurement sensors** - to verify baggage size