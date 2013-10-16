# Functionele eisen (Wat is het?)

## Gebruikers

### Programmabeheerder

Beheert een lesprogramma:

-   Invoeren vanvakken en hun looptijd, al dan niet verplicht,
    keuzevakken, prereqs, titularis van het vak

-   Invoeren van lesgevers

-   Invoeren van lokalen

-   Constraints ivm planning (welke)

### Titularis

### Student

-   Inschrijven op vakken

## Resources

Resources zijn de leslokalen en de faciliteiten die deze lokalen
aanbieden, zoals het aantal plaatsen en de apparatuur.

## Scheduling

Een schedule bevat datums, tijdstippen en lokalen voor alle vakken in
het systeem.

Er is telkens maar één definitief rooster, maar gebruikers kunnen
meerdere roosters genereren en voorstellen.

### TODO Automatische scheduling

De applicatie moet aan de hand van alle vooraf ingevoerde constraints
automatisch een schedule kunnen berekenen die aan deze voldoet.

Alle gebruikers behalve studenten kunnen een (semi-)automatische scheduling
laten uitvoeren. Het doel hiervan is om te checken of de (extra)
constraints die ze toevoegen resulteren in een haalbaar rooster.

Ze hoeven dit dus niet expliciet doen, maar het zou ook in de
achtergrond steeds een nieuwe schedule kunnen genereren.

### Aanpassen van automatisch gegenereerde roosters, voorstellen en bevriezen

Berekende roosters kunnen manueel worden aangepast. Hierbij worden
conflicten met de constraints weergegeven.

1.  TODO Het is niet duidelijk wat dit wilt zeggen:

    Een titularis kan de planning wijzigen van zijn vakken, en de
    programmamanager kan de planning wijzigenvan vakken in zijn
    programma. Om zoveel mogelijk te vermijden dat er in de toekomst nog
    wordt geschoven met een bepaalde inplanning van een vak, kan elke
    inplanning die geen conflicten oplevert als "voorstel" gemarkeerd
    worden door de titularis van deze vakken; idem voor een
    programmamanager en vakken in zijn programma. Een programmabeheerder
    kan voor alle programma's en vakken wijzigingen doorvoeren in de
    planning, en kan ook het complete rooster bevriezen zodat het
    definitief wordt.

2.  TODO **Welk** berekend rooster wordt manueel aangepast en door **wie**?

3.  TODO Wie staat er boven de programmamanagers???

### Gebruikersinterface en visualisatie

Enkel definitieve roosters zijn publiek (kunnen door iedereen en niet
alleen programmamanagers en titularissen worden gezien).

1.  Voorbeelden van gebruik door alle gebruikers:
    1.  Het persoonlijke rooster weergeven van een student of lesgever
    2.  Het rooster voor een bepaald vak weergeven.
    3.  De planning met betrekking tot een bepaald lokaal weergeven.
2.  Filteren
    Waar van toepassing kan er steeds gefilterd worden op bepaalde
    criteria zoals tijdsperiode, programma, etc.
3.  Zinvolle defaults
    De interface zal steeds zoveel mogelijk zinvolle defaults voorstellen
    bij invoer en visualisatie van gegevens.
4.  Mobiele webinterface
    Aparte en doelgerichte interface (werkend op android) die rekening houdt met:
    -   Kleinere schermoppervlaktes
    -   Minder geheugen
    -   Minder verwerkingskracht
    -   Onstabiele netwerkverbinding
    -   Eventueel extra mogelijkheden zoals geolocatie
5.  Standaardwebinterface
6.  Internationalisatie

    Alle interfaces worden minimaal aangeboden in het Engels en het
    Nederlands. De taalkeuze wordt bepaalde bij het aanloggen.

### Data

De applicatie moet een datadump vanuit een bestaande databank met
informatie rond vakken, titularissen, onderdelen van vakken en
studenten kunnen inladen en integreren in de eigen databank.

### Export naar Google Calendar
