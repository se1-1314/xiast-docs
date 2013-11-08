**Verslag vergadering 3 **

**Datum:		**Maandag** **28 oktober 2013

**Locatie:** 		F4, Campus VUB Etterbeek

**Begin:			**13u30

**Einde: 		**14u30

**Aanwezigen:        		**Adriaan Leijnse, Nils Van Geele, Lars Van Holsbeke, Anders Deliens, Kwinten Pardon, Youssef Boudiba

**Secretaris:		**Youssef Boudiba

1. TODO-List vorige vergadering (10 min)

1. **Anders: ** werkt requirements verder uit.

    1. SRS voorbeelden opgezocht.

    2. Op IEEE documenten gelezen omtrent requirments.

    3. Requirments van andere projecten doorgenomen om een beter beeld te krijgen van wat er allemaal gedaan moet worden.

    4. Zal tegen volgende vergadering de requirments verder uitwerken.

2. **Adriaan, Anders, Nils:** werken een voorstelling voor lessenrooster uit.

    5. Gaan we tijdens deze vergadering bespreken.

3. **Nils: **denkt na over een inlogsysteem met (momenteel) nog 2 types rechten.

    6. Wordt momenteel uitgesteld.

4. **Kwinten, Youssef, Lars: **denken (visueel) na over GUI.

    7. Wordt momenteel uitgesteld.

5. **Iedereen:** denkt na over welke taal we kunnen gebruiken voor implementatie.

    8. Design manager Adriaan zal dit tegen volgende les bepalen.

2. Bespreken van de requirments 

Gezien er nog onduidelijkheden zijn over het project, hebben we ons eerder bezig gehouden met hoe we de requirments kunnen beschrijven(zowel voor ons als voor de gebruiker).

    1. Adriaan stelt voor om de nut van elke features duidelijk mee te delen. 

    2.  We kunnen gebruik maken van use-cases om het document gebruiksvriendelijker te maken.

3. Users van het systeem 

Onduidelijkheden omtrent programmabeheerder en andere actoren blijft voorbestaan. We zullen daarom ons ‘eigen’ systeem ontwerpen en definiëren de users:

    3. Student:

        1. Heeft overal leesrechten (READ).

    4. Titularis:

        2. READ

        3. vraagt programmabeheerder toestemming (via request) om de schedule aan te passen.

        4. Kan een vak niet verplaatsen zonder toestemming.

    5. Programmabeheerder:

        5. READ.

        6. beheert een opleiding (programma’s) en zijn verantwoordelijke voor specifieke vakken.

        7. deelt vakken uit voor de titularissen.

        8. Kan enkel de programma’s binnen zijn opleiding beheren/aanpassen.

        9. accept of decline de request van een titularis.

        10. Communiceer met andere programmabeheerder indien conflicten onstaan tussen titularissen. Werken samen tot een oplossing (desnoods via een ‘priority’ systeem/heuristieken). De oplossing wordt dan de huidige schedule.

        11. Genereert constraints (bv: een vak moet op een bepaalde tijdstip en plaats gegeven worden).

Een programma bestaat een aantal vakken. 

Vakken kunnen overlappen.

Er bestaat meerdere programma’s.

**Ideeen:**

Als een schedule generatie niet mogelijk is, worden conflicterende zaken gehighlight.

We hebben een manier nodig om constraints voor te stellen, door te geven en op te lossen. 

Ze worden in de db  opgeslagen.

4. TO DO List

* **Youssef: **legt vast hoe we de code gaan testen.

* **Iedereen: **Stuurt suggesties op voor requirments en dergelijke via mailinglijst.

5. Verplaatsing vergadermoment week 8

* **_Locatie:_*** 	infogroep, Campus VUB Etterbeek*

* **datum:** 	Dinsdag 5 novemberr 2013

* **tijd:** 		15u

6. Mededelingen

    6. Aankomende Deadlines	

<table>
  <tr>
    <td>Datum</td>
    <td>Doel</td>
  </tr>
  <tr>
    <td>04/11/2013</td>
    <td>SPMP inleveren (Lars)</td>
  </tr>
  <tr>
    <td>15/11/2013</td>
    <td>eerste versie documenten</td>
  </tr>
</table>


