DEMO Scenario's
===============================
Inleiding
---------
Wanneer bijvoorbeeld een VUB student surft naar Xiast, momenteel te vinden op `xiast.nvgeele.be`, dan komt deze terecht op de homepage waar hij een verwelkoming krijgt met vermelding dat hij de applicatie bezoekt als een guest.


Guest
------
Een niet-ingelogde gebruiker heeft op zijn menubalk de drie basisknoppen: <br/>
>    Homepage | Aboutpagina | VUB-link | Schedulespagina | Loginfunctionaliteit | Wijzigen taal <br/>

Het veranderen van de huidige taal kan eenvoudig door op corresponderende knop te klikken, het systeem ondersteund momenteel twee talen: Nederlands en Engels. <br/>
> `België -> Nederlands` <br/>
`Groot-Brittanië -> Engels` <br/>

Aangezien aan het Engels een universelere taal is dan het Nederlands, zullen we vanaf hier verder gaan in het Engels wat betreft de taal van de applicatie.

De basisfunctionaliteit voor dit type gebruiker bestaat vnl. uit het bekijken van roosters voor een specifiek programma: Deze is toegankelijk door via de knop: "Schedules" <br/>
> `Schedules -> Programma schedules` <br/>

De interface van deze pagina is zeer intuïtief te begrijpen. Als guest kan ik door op het autocompleteveldje te klikken, bekijken welke programma's er momenteel beschikbaar zijn op de universiteit. <br/>
> `autcomplete -> programma's`<br/>

Vervolgens kan ik of direct op een programma in de lijst klikken, of een aantal kenmerkende letters intypen die de lijst verder zullen filteren en dan op een programma klikken. Veronderstel dat ik met onze ingenieur Anders wil afspreken om samen de vooruitgang voor het vak software engineering te bespreken, dan kan ik via 3e bach ir-cw heel eenvoudig zijn programmarooster inladen om zo een gepast moment te bepalen. <br/>
> `programma: IR -> schedule programma`

Wanneer ik het rooster van dit programma wil zien voor andere weken, dan kan ik heel eenvoudig via de voorzien pijltjes door de weken scrollen. Een 'day-view' is beschikbaar beschikbaar via de keuzeknoppen rechtsboven.
>  `week <> -> other week`
`day <> month -> change of view`


Student
-------
Stel dat ik voor mezelf als student mijn persoonlijk rooster zou willen raadplegen. Ik kan dit heel eenvoudig doen door mij in te loggen met mijn VUB-netid en wachtwoord, deze worden via een VUB-server gechecked.
> `login, netid: lavholsb, password -> logged in` <br/>

Vervolgens kom ik terug op de homepage terecht met de melding dat ik ben ingelogd. Vervolgens kan ik naar mijn persoonlijk rooster gaan door te klikken op 'My Schedule' <br/>
> `My Schedule -> Personal Schedule` <br/>

Dit rooster laat enkel de planning zien voor vakken waar ik momenteel ben op ingeschreven. Om de lijst van vakken te kunnen zien waarvoor ik ben ingeschreven, volstaat een klik op 'curriculum-info'.
> `Curriculum info -> Subscribed courses` <br/>


Titular
-------
Stel ik ben prof De Meuter en zou graag de planning willen zien voor de vakken waarvan ik titularis ben, zodat ik weet wanneer ik les moet geven en er werkcolleges van één van mijn vakken zijn. <br/>
Om dit te kunnen doen, hoef ik mij enkel in te loggen op Xiast met mijn VUB-netid en wachtwoord.
> `login, wdemeuter, password -> logged in` <br/>

Zoals gebruikelijk kom ik op de homepage terecht. Alle activiteiten die ik als titularis betreffende de planning kan doen, zijn beschikbaar onder 'My Schedule'. <br/>

1. Stel, ik merk dat studenten de leerstof voor het vak 'Algoritmen en Datastructuren II' nog niet zo goed onder de knie hebben. Ik zou specifiek voor die groep dus graag éénmalig een extra WPO plannen. Dit kan ik doen door te klikken op 'Schedule Activity'. <br/> `Schedule Activity -> Create event`. In het venster dat vervolgens verschijnt kan ik een keuze maken uit de cursussen waarvan ik titularis ben. In dit geval nemen we 'A&DII - WPO1'. We kiezen de week waarin we de activiteit zouden willen laten plaatsvinden, in dit geval 36 Het aantal keer dat we de activiteit willen herhalen, aangezien het een éénmalige activiteit is, voeren we 1 in. Bij duration voer ik vervolgens het aantal slots in dat het WPO moet duren. Eén slot is een halfuur, mijn WPO duurt 2u dus voer ik 4 slots in. Na een aantal seconden doet de scheduler mij een aantal suggesties qua planning waarop ik mijn activiteit zou kunnen plannen, afhankelijk van de dag die onderdaan is ingegeven. Ik kan willekeurig een suggestie  (vb. W36D2S6-9), aangezien deze conflictvrij zijn. Vervolgens kan ik nog één van de vrije lokalen kiezen (vb. E0.04) en mijn activiteit toevoegen. Vervolgens kan ik deze proposal verzenden naar de programmamanager door te klikken op 'send proposal', waarna ik nog een bericht kan meegeven.
2. Stel mijn assistent voelt zich vb. donderdagochtend nogal ziekjes en zou graag om 10u bij de dokter langsgaan. Aangezien hij/zij op dat moment les heeft, zou ik deze activiteit graag willen verplaatsen. Dit doe ik heel eenvoudig door de betreffende activiteit te verslepen naar een al dan niet vrije plaats. Door vervolgens op 'check' te klikken kan ik zien of er zich al dan niet een overlap heeft voorgedaan. vb. als ik de les van donderdagochtend gelijktijdig laat vallen met die van vrijdagochtend zal er zicht een error voordoen. Via send-proposal kan ik dit voorstel vervolgens laten goedkeuren door de pmanager.
3. Veronderstel dat de lessen door het jaar voortreffelijk goed vooruit zijn gegaan dat ik de laaste les van het jaar niet meer nodig heb. Ik kan deze eenvoudig verwijderen door deze te selecteren en vervolgens op de deleteknop te klikken. Via send proposal kan dit effect vervolgens worden doorgepropageerd naar de programmanager.
4. Stel ik heb zo veel wijzigingen aangebracht dat ik door het bos de bomen niet meer zie, dan komt reset mij te hulp door de oorspronkelijke schedule terug op te halen.


Programmanager
--------------
> `login, tjdhondt, password -> logged in` <br/>

Stel ik ben prof d'Hondt en ik beheer alle programma's betreffende computerscience. Nadat ik mij als programmanager heb ingelogd, krijg ik onmiddellijk de 3 belangrijkste features op mijn scherm te zien: schedules behandelen, programma's bewerken en leslokalen beheren. <br/>
Aangezien ik als programmanager goed weet uit het verleden dat er nogal veel aanvragen zijn tot wijzigingen van roosters, spits ik mij als eerste toe op het behandelen van schedules via 'My Schedule'. <br/>
> `My Schedule -> Schedule overview`

Op deze pagina krijg ik een overzicht van de roosters van alle vakken van programma's die ik beheer. Net zoals mijn collega De Meuter kan ik blokken aanmaken, verplaatsen, verwijderen, de huidige schedule checken en het rooster resetten naar zijn oorspronkelijke staat. Buiten een lijstje van fouten die al dan niet worden teruggegeven bij een overlap, kan ik via een requestlijst proposals van titularissen, zoals bvb. die van prof De Meuter inladen in de huidige schedule en deze vervolgens controleren op conflicten. Nadat eventuele aanpassigen zijn gedaan, maak ik de schedule definitief door deze weg te schrijven via de APPLY knop: de huidige schedule is nu definitief. <br/>

Ik heb net vernomen dat de vakgroepraad heeft beslist om het vak 'Software Engineering' niet meer te geven in de bachelor CW. Via de program-edit functionaliteit kan dit vak verwijderd worden door de juiste cursuscode op te zoeken en deze via de add/deletknop onderaan in te geven. Een klik op delete verwijderd de cursus uit het programma. Het aanmaken en/of verwijderen van een cursus verloopt op dezelfde manier. 
<!-- TOEVOEGEN VAN EEN CURSUS WERKT NIET -->

Stel er is op SOFT beslist om de keuken als leslokaal in te richten en er werd een beamer geïnstalleerd. Dit lokaal kan aan Xiast worden toegevoegd via de Classroom Edit functionaliteit. Allereerst kies ik het F gebouw uit het autocomplete lijstje, waarna ik op de add-room knop klik. Vervolgens voer ik het lokaalnr, aantal zitplaatsen (20 in dit geval) in en meldt ik dat er een beamer aanwezig is. Een druk op add voegt dit lokaal toe aan de db.


