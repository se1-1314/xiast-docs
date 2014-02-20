# Agenda vergadering 9

Variabele				  |Inhoud
---			    		  |---
**Datum:**        |Donderdag 20 februari 2014
**Locatie:**      |1E08
**Begin:**        |12u15
**Einde:**        |13u21
**Aanwezigen:**   |Iedereen
**Secretaris:**   |Nils Van Geele


# TODO-list vorige vergadering
n.v.t.

# Feedback vorige iteratie (Lars) (30 min)
Ik heb vorige iteratie reeds met een aantal mensen een persoonlijke feedbacksessie gehouden. De bedoeling is dat we nu een kleine groepsdiscussie houden i.v.m. het werk, de voortgang, vergaderingen,... van vorige iteratie. Wat was goed? Wat kan beter? Hoe kunnen we dat beter doen? enz.
Ook i.v.m. de finale presentatie van vorig iteratie had ik graag (bovenop hetgene jullie me na de presentatie al hadden gezegd) wat persoonlijke feedback van jullie gehad.

* Presentatie
  * Lars was wat te zenuwachtig, beetje droog, en prutsen met remote
  * Slides misschien meer in VUB stijl, meer plaatjes
  * Betere demo geven
  * Visie beter definieren
  * Veel discussie tussen groepen tijdens presentatie
* Documenten
  * Voortgang was wat traag
  * Niet iedereen las elkaars documenten
* Algemeen
  * Meer in groep samenkomen om te werken
* Paar opmerkingen bij leden (Anders)
  * Lars
    * Negatief: Assertiever zijn, meer manager zijn
    * Positief: Conflicten vermijden en oplossen, gaat voor het team
  * Kwinten
    * Negatief: Beetje aanvallende/assertieve toon in publieke mails
    * Positief: Goed gewerkt in iteratie 1, vroeg les gegeven aan Anders en Youssef
  * Youssef
    * Negatief: Dingen durven zeggen
    * Positief: Rustig, komt altijd naar vergaderingen ook als hij geen les heeft en als het vroeg is
  * Nils
    * Negatief: Geen
    * Positief: Secretaris direct op zich genomen, goed Git uitgelegd zodat het minder chaotisch ging
  * Adriaan:
    * Negatief: Moet meer in team werken, bij rol houden, respecteren van ieders rol etc. Toon in mails wat aanpassen.
    * Positief: Enige die deftige feedback gaf op SRS, veel kennis over wat er gedaan wordt, zoekt resources (tutorials etc) voor iedereen op
  * Anders
    * Negatief: Meer tijd steken in coderen, meer (op tijd) opdagen
    * Positief: Goed gewerkt aan document, goed proberen communiceren

# Overlopen TODO iteratie 2 (Lars) (45 min)
Overlopen van en toewijzen van het werk voor iteratie 2 a.d.h.v. het planningsdocument opgesteld door Adriaan.

LET OP: ER IS NIET ZOVEEL TIJD MEER!

* Iteration 2 "Making Clojure and JavaScript work together" - March 4th, 2014
  * Interfaces
    * Both a mobile and a desktop interface need to be provided.
  * Schedules for whole programs
  * Permission system
    * Program managers can only change the courses they own, etc.
  * Configuration file driven scheduling algorithm
    * To make a simple start without introducing too much complexity in the
      front-end.
  * Program managers can add programs through a web-interface
  * Program managers can add rooms through a web-interface
  * Instructors can change course details of existing courses
    * E.g. "this course requires an overhead projector", etc.

## Wat er allemaal moet worden gedaan (Adriaan)
* Front-end moet samenzitten/mailen/chatten om:
  * Use cases te maken: verhaaltjes over hoe het programma gebruikt wordt (kunnen in de SRS als ik het goed heb)
  * Requirements aan te vullen. (Requirements moeten het probleemdomein volledig beschrijven, dus wat het programma moet doen. Hoe dat de GUI eruitziet en dergelijke is niet zo belangrijk. "Cycling tabs" moet bijvoorbeeld weg aangezien het geen requirement is dat het met tabs werkt.) `(Lars) Best samen eens de volledige werking van het probleem samen overlopen (+ ev. audiorecorden): wat moet het allemaal kunnen, wie heeft welke rechten, hoe verloopt de Dataflow => ervoor zorgen dat iedereen zich kan 'oriënteren' in de complexiteit`
  * Eventueel mock-ups maken voor alle functionaliteit in de requirements. Belangrijker dan echte mock-ups is lijstjes hebben met alles wat er op de pagina moet staan.
  * HTML-pagina's voor de functionaliteit maken, zit hiervoor samen met Kwinten.
  * Vertalingen vervolledigen (ik denk dat Youssef al weet hoe dit moet)
  * Documentatie schrijven voor de webpagina's in Clojure en voor de code in JavaScript `(Lars) Opm van een teamlid: in hoeverre dient team front-end Clojure te kennen, aangezien dit nogal tijdverslindend.`
* Back-end moet samenzitten/mailen/chatten om:
  * Database design maken, eventueel met een modeleertool.
  * Database implementeren (en een SQL-library kiezen) en zorgen dat de queryprotocols erop werken
  * API uitbreiden voor de teacher+program manager-functionaliteit
  * Aan de scheduler beginnen.
  * Documentatie automatisch laten genereren.

# Uitnodigen Jens/Ragnhild (Lars) (10 min)
We zullen volgende vergadering Jens/Ragnhild uitnodigen (zie mail Jens), vermoedelijk zal dit donderdag 27/02/2014 zijn. Ik zal een mailtje sturen.

Volgende vergadering zelfde tijdstip.

# Documenten in LaTeX (Lars) (10 min)
De laatste iteratie zijn alle documenten van markdown -> tex -> pdf omgezet. Het is geen slecht idee om eens te checken of die tex code volledig is wat je wil en eventuele aanpassigen te doen (lage prioriteit)

Iedereen schrijft zijn documenten hoe hij wilt, zo lang ze op het einde omgezet kunnen worden naar PDF en dat iedereen zijn document in dezelfde stijl staat.

# Eens langer samenzitten met iedereen om veel in een keer gedaan te krijgen (Adriaan) (10 min)
Dit is heel handig en zo krijgen we veel gedaan, dus ik denk dat we dit eens moeten doen op een dag waarop veel mensen kunnen.

Samenkomen op:
* Vrijdag 21/02 om 15u tot 17u
* Dinsdag 25/02 om 15u tot 18:30u
* Donderdag 27/02 om 12u tot 14u
* Vrijdag 28/02 om 15u tot einde werk

# Mededelingen

Deadlines:
 * **!** Dinsdag 04/03/2014 - Opleveren CODE en DOCUMENTEN **!**
 * Woensdag 12/03/2014 - Presentatie

# TODO-list

  * Iedereen: Documenten aanpassen, **uren die je werkt opschrijven**
  * Youssef: Clojure en JavaScript oppoetsen
  * Adriaan: API wat verder uitwerken, opzoeken informatie voor scheduler
  * Lars: Clojure oppoetsen, samen met Nils database designen
  * Kwinten: Front-end code nog eens doornemen, oppoetsen
  * Anders: Clojure en JavaScript oppoetsen
  * Nils: samen met Lars database designen

# Volgende Vergadering
(voorlopig) donderdag 27 februari 2014; zelfde plaats, zelfde uur
