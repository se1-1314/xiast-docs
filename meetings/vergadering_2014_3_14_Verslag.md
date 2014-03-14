# Agenda vergadering 12

Variabele				  |Inhoud
---			    		  |---
**Datum:**        |Vrijdag 14 maart 2014
**Locatie:**      |E1.08
**Begin:**        |15u
**Einde:**        |16.48u
**Aanwezigen:**   |Lars, Adriaan, Kwinten, Youssef, Nils
**Secretaris:**   |Nils Van Geele


# TODO-list vorige vergadering
- Wat kan/is er al
  - Front-end code om schedules te displayen
  - Back-end code om rooms, courses en course-activities is er
- Wat moet er nog gedaan worden
  - API uitbreiden om schedules op te vragen
  - API uitbreiden om programs aan te maken
  - Authentication uitbreiden om na te gaan of gebruiker program manager, titular, ... is
  - Front-end pagina voor program manager, moet niet per se werken maar moet er zijn (Kwinten)
  - Front-end pagina voor titular (Youssef)

# 1. Evaluatie presentatie/iteratie 2 + vooruitblik & planning iteratie 3 (Lars, 1u15)
Wat moet er nog gedaan worden:
- EER model van database maken voor documentatie (liefst automatisch) **Nils**
- Security (wrappers voor API) **Nils**
- Back-end heeft al voorzieningen voor courses, programma's, rooms, ...
  - Koppeling met front-end is nodig
- Betere time-tracking
  - **Lars** maakt spreadsheet voor Excel voor iedereen, of andere oplossing
- Echt requirements dashboard
  - **Nils** kijkt naar simpele oplossing
  - **Anders** zet requirements er op
- Beter design document
  - **Adriaan** werkt eraan; modellen, flow-charts, ...
- Meer documentatie
  - Zoveel mogelijk docstrings in code
- Testing
  - Testplan moet klaar zijn
  - Meer test-driven development; vooral voor scheduler
  - Regression tests voor bugs
- Training
  - Best om gewoon te werken, hulp vragen of zoeken bij problemen
  - Samensmelting met implementatie
- Appcache bug oplossen **Kwinten**
- VUB link bug oplossen **Kwinten**
- Translations in navbar **Adriaan**
- URL probleem **Adriaan**

- Evaluatie iteratie 2: wat liep er verkeerd?
  - Grote oorzaak: te weinig coding sessions
  - Veel tijd gespendeerd aan ORM, database was bottleneck

- Planning en doelstellingen iteratie 3 a.d.h.v. SPMP vastleggen
  - Overgedragen van iteratie 2
    - Front-end
      - Alle dummy front-end pagina's moeten echt werken
      - Niet alle templates zijn volledig klaar
      - Vertalingen niet up-to-date
      - Mobiele interfaces niet volledig geintegreerd
    - Back-end
      - Dummy schedules opvragen/aanmaken
      - Datadump in database
      - Permissions
  - Iteratie 3
    - Program-manager interfaces
      - Courses/course activities aanmaken, aanpassen, ...
        - Titularissen aanduiden, ...
      - Programmas aanmaken, aanpassen, ...
        - Courses toevoegen (keuze/verplicht), ...
      - Scheduling interface
    - (Prototype) scheduler
      - Enkel initiatie door program manager
      - Stap 1
        - Manueel schedule aanmaken (1 week)
        - Scheduler gaat na of het wel echt kan
        - Presenteert conflicten
        - Is "makkelijk" testbaar, kan test-driven
      - Stap 2
        - Stap 1, maar stelt correcties voor
        - Correcties kunnen aanvaard worden, of terug manuele aanpassing
    - Meer algemene tests
    - Zie ook "wat moet er nog gedaan worden?"
  - Extras (iteratie 4?)
    - Globale administrator
  - Tijdschattingen
    - Quality: 15u
    - Tests: 20u
    - Requirements: 7u
    - Design: 15u
    - Implementatie: 65u/p
    - Configuratie: 5u
    - Management: 50u
    - Training: valt zo goed als samen met implementatie (documentatie lezen, ...)
  - Samenkomsten
    - Geen grote vergaderingen meer, wel kleine bespreking voor samenkomst
    - Elke vrijdag code sessies
    - Paasvakantie (11u)
      - Donderdag 10 april
      - Vrijdag 11 april
      - Maandag 14 april

- ~~(groeps/code) Problemen/Onduidelijkheden vastleggen en oplossen + naar de toekomst toe: hoe kunnen we deze in het vervolg het efficiëntste oplossen (en lieft zelfs voorkomen!)~~

- ~~**Trainingsschema** vastleggen: tegen wanneer moet wat gekend zijn (!zonder excuses)~~


# Mededelingen
* Privégesprek met Kwinten


# DEADLINES:
- 15 april: deadline iteratie 3

# TODO-list
- Lars contacteert Anders voor datums paasvakantie/andere samenkomsten
- Zie ook: puntje 1

# Volgende Vergadering
Vrijdag 21 maart, 15u
