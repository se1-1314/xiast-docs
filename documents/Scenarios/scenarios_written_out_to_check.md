DEMOSCENARIO
=============
Current user: Guest
--------------------
- Menubar: Schedules | Login

De gebruiker surft naar xiast.nvgeele.be en komt als Guest user terecht op de homepage. Op deze homepage krijgt onze guest user een filterveldje te zien waarin hij een willekeurig programma (van de VUB) (deels) kan ingeven. De nog matchende programma's worden bij elke toetsaanslag opgelijst.(Functionaliteit vergelijkbaar met de lessenroosters van de my.vub). De guest kan vervolgens op een programma uit deze oplijsting klikken om dit te selecteren. Een volgende klik op de knop "Show" toont de schedule van het geselecteerde programma (in Calendarview).
De menubar voor een guestuser bestaat uit een knop om terug te gaan naar de homepage, genaamd "Schedules" en een knop om zich in te loggen als een specifieke user.

Current user: Student1
-------------------------
- Menubar: My Schedule | All Schedules | "Student1"

De gebruiker logt zich in als een (bestaande) student. "Student1" logt zich in.
Een student krijgt op de homepage zijn persoonlijke schedule te zien. Daarbij komt ook nog een extra textview waarin de eerstvolgende les staat weergegeven.
De menubar voor een student bestaat uit drie knoppen: MySchedule (deze verwijst terug naar de homepage), All Schedules en een dropdown menu met logout mogelijkheid.
All Schedules toont een pagina die toelaat om (net zoals de homepage van de guestuser) de schedule van een willekeurig programma op te vragen.
De student kan zich uitloggen via een dropdown menu onder z'n naam.

Current user: Titular 1
-------------------------
- Menubar: My Schedule | All Schedules | Assigned courses | "Titular1"

De gebruiker logt zich in als een (bestaande) titular. "Titular1" logt zich in.

Eens de titular ingelogt is, krijgt hij de pagina "My Schedule" te zien. Deze pagina bevat de persoonlijke schedule van de titular, d.w.z. zijn toegewezen cursussen. Op diezelfde pagina kan de titular een schedule proposal opstellen: door op de knop "edit schedule " te klikken verschijnen de nodige gebruikersinterface-elementen om een schedule te kunnen bewerken. Deze omvatten: een knop "schedule activity", "delete", "check", "reset" en "send proposal". 
"Schedule activity" geeft een pop-up scherm weer waarin een courseactivity geselecteerd kan worden uit een lijst van toegewezen "courseactivities". Eens een activity geselecteerd is, kan een (start)week gekozen worden, deze staat standaard ingesteld op de week waarin de calendar view zich bevindt, waarin de activeit plaats vindt. Indien gewenst kan via een repeatfunctionaliteit deze activiteit over meerdere weken geplanned worden. Vervolgens dient een dag gekozen te worden in combinatie met een tijdspanne (begin/einduur) van de activiteit. Om het de titular makkelijker te maken wordt er een knop voorzien die suggesties (dag - uur combinaties) weergeeft waarop de courseactivty conflictvrij zou kunnen plaatsvinden. De titular is niet verplicht deze suggesties te volgen en kan zelf nog altijd een bepaalde dag - uur combinatie kiezen.
Hierna dient een leslokaal ("room") gekozen te worden voor de activiteit, vrije lokalen worden eveneens gesuggereerd via een dropdown menu.
De titular kan hierna zijn activiteit toevoegen door op de "Add" knop te klikken. De operatie afbreken kan ten allen tijde via de "Cancel" knop.

Een reeds gemaakte activity kan bewerkt worden door erop te klikken, hierdoor worden de oorspronkelijk 'grayed-out' knoppen "edit" en "delete" actief.
"Edit" biedt dezelfde functionaliteit als diegene die wordt geboden bij het creëren van een schedule-activity, maar dan voor een bestaande actviteit. Enkel de repeatfunctionaliteit wordt hier niet aangeboden.
"Delete" verwijdert, na een bevestiging via een pop-up venster, de geselecteerde activiteit.

Door op de "reset" knop te klikken kunnen alle veranderingen ongedaan gemaakt worden, zolang er niet op "send-proposal" geklikt werd.

Nadat een titular zijn persoonlijke schedule heeft aangepast, wordt hem de mogelijkheid geboden om dit voorstel te verifiëren: zijn er geen conflicten met andere schedule-activities,... Dit alles gebeurt via de knop "check". Wanneer er conflicten gedetecteerd worden, worden deze kenbaar gemaakt via een "errorlist" die al deze conflicten bevat. Door op een conflict in deze lijst te klikken, veranderd de calendar-weergave naar de week waar het betreffende conflict zich voordoet. De aandacht van de titular wordt nog eens extra getrokken d.m.v. een highlighting van de conflicterende activiteiten in een andere kleur.


Wanneer de titular tevreden is met zijn schedule-proposal kan hij zijn schedule-proposal doorsturen naar de program manager via de knop "send proposal". Door hierop te klikken, verschijnt er een pop-up venster waarin de titular een bericht kan nalaten aan de program manager. Door simpelweg op de knop confirm te klikken wordt dit bericht samen met de bijbehorende proposal doorgestuurd naar de program manager. De proposal wordt dan door de program manager verder verwerkt.

---
Op de Assigned courses pagina krijgt de titular een lijst van zijn toegewezen vakken te zien en kan hij informatie (description en faciliteiten) betreffende deze vakken aanpassen. Het selecteren van een vak geeft de juiste beschrijving van het vak en de faciliteiten voor dat vak weer. De titular kan deze beschrijving aanpassen door op de knop “edit course description” te klikken. Dit zorgt voor een pop up venster waarin de titular een beschrijving kan nalaten. De titular kan ook rechtstreeks de faciliteiten voor dat vak aanpassen via een check box. De veranderingen worden bewaard door op de knop "edit facilities" te klikken.

Via het dropdown menu onder de naam van de titular kan de titular zijn inbox raadplegen. De inbox is een lijst van berichtjes (antwoorden gezonden door het program manager) die een bevestiging omvat over een reeds opgestelde schedule proposal. Een bericht bestaat uit een titel en een description.

All Schedules toont een pagina die toelaat om (net zoals de homepage van de guestuser) de schedule van een willekeurig programma op te vragen.

De titular kan zich uitloggen via een dropdown menu onder zijn naam.



Current user: Programmanger 1
------------------------------
- Menubar: My Schedule | All Schedules | program edit | Clasroom | "Programmanager1"

De gebruiker logt zich in als een (bestaande) program manager. "Programmanager1" logt zich in.

Op de homepage ("My Schedule") krijgt het ingelogde program manager zijn persoonlijke schedule te zien. De schedule bestaat uit diverse vakken uit verschillende programma's waarvoor het program manager verantwoordelijk is.

Op dezelfde pagina bevindt zich naast de schedule een request list. Request list is een lijst van requests (schedule proposals) gezonden door verschillende tiulars. Het is de taak van het program manager om die requests één na één te verwerken.
Een request bestaat uit een titel en 4 kleine knopjes. Het eerste knopje ("attachment logo") dient om de schedule proposal in te laden in de huidige schedule. Het tweede knopje ("question mark") zorgt voor een pop up venster die informatie bevat over de request. Het derde knopje is een knop om te bevestigen en laat de betrokken titular weten dat de request aanvaard werd door er naar een bericht te sturen (de titular krijgt dit bericht in zijn inbox). Het laatste knopje is een deny knopje en werkt op dezelfde manier als het confirm knopje.


Wanneer het program manager een schedule proposal inlaad in de huidige schedule, worden de conflicten kenbaar gemaakt via de errorlist (analoog met titular). 
De schedule activities kunnen bewerkt worden door erop te klikken, hierdoor wordt de oorspronkelijk 'grayed-out' knop "edit" actief.
"Edit" biedt dezelfde functionaliteit als de edit knop bij titular.
Het program manager kan gebruik maken van de knop "check" om na te gaan of de veranderingen die hij heeft aangebracht geen conflicten veroorzaken. 

Het program manager kan zijn programma’s beheren onder Program edit. Via een zoekveldje kan hij een programma opzoeken. 

Het program manager kan een programma toevoegen via de knop "create". Dit geeft een pop up venster weer waarin het program manager 3 veldjes moet invullen: title, program Manager en description. Het program manager kan dit bevestigen via de knop "create program" of kan dit annuleren via de knop "cancel".
Bij het selecteren van een programma, wordt de mogelijkheid aangeboden om dat programma te verwijderen via de knop "delete program". Deze zorg voor een pop up venster met daarin twee knoppen: "confirm" en "cancel".
Het klikken van een specifiek programma geeft een lijst terug van zijn vakken. Analoog met de programma’s kan het program manager vakken selecteren, verwijderen en aanmaken. 
Via de knop "create course" kan een nieuw vak worden aangemaakt. Hiervoor dient het program manager, via een pop up venster, volgende informatie in te vullen: Course code, title, titular, description, department en type?? (BA, MA, mandatory en verplicht).
Eens een vak geselecteerd, wordt de grayed-out knopje "delete course" weer actief en kan een vak verwijderd worden.
Het selecteren van een vak geeft dan ook zijn description terug, die het program manager kan aanpassen via de knop "update information".


Via Classroom edit kan het program manager klaslokalen en zelfs gebouwen beheren.
Op de pagina wordt een lijst van gebouwen weergegeven. Het program manager kan een gebouw toevoegen via de knop "add building". Hij dient hierbij, via een pop up venster, volgende informatie mee te geven: Name (bv. Z) en aantal verdiepingen. Een gebouw kan verwijderd worden door eerst een gebouw te selecteren en vervolgens op de knop "remove building" te klikken.
Het selecteren van een gebouw geeft een lijst van corresponderen klaslokalen terug.
Een klaslokaal kan worden toegevoegd door op de knop "add room" te klikken. Hierdoor wordt een pop up venster weergegeven waarin het program manager de verdieping moet meegegeven en een cijfer voor het klaslokaal. Analoog met gebouw kan een lokaal verwijderd worden door het eerst te selecteren en vervolgens op de knop "remove room" te klikken.
Telkens een lokaal wordt geselecteerd, wordt informatie over dat lokaal weergegeven. Het program manager kan dit aanpassen via de knop "update details" waarbij hij enkel een beschrijving dient mee te geven.


All Schedules toont een pagina die toelaat om (net zoals de homepage van de guestuser) de schedule van een willekeurig programma op te vragen.

Via het dropdown menu onder de naam van het program manager kan zijn inbox raadplegen. De inbox is een lijst van berichtjes die elk een request beschrijft van een titular (~ request list met enkel titel en description). Een bericht bestaat uit een titel en een description.

De program manager kan zich uitloggen via een dropdown menu onder zijn naam.