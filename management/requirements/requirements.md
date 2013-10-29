# Software Requirements Specifications

## Introduction

### Purpose

The purpose of this SRS is to provide a detailed description of all the requirements for project Xiast.
It will include a list of constraints, features and (user)interfaces. 

This document is intended for the members of the development team behind Xiast as well as Professor Ragnhild Van Der
Straeten and assistent Jens Nicolay.

Disclaimer: This document is a work in progress and is not yet complete. If you have any suggestions or
corrections, please let me know.

### Scope

The application that will be discussed in this document is an online scheduling-tool for university classes, 
named Xiast (short for Xiast is a scheduling tool). It will compute the optimal distribution of classes, 
based on certain constraints, which are given by administrators and/or teachers. Students and theachers
will be able to check their personal schedule online and via andriod smartphones. Teachers will also 
be able to add certain requirements to the classes and will be able to change some of these requirements 
or even cancel a class last-minute. The goal of this project is to make a scheduling-tool 
that is very personally modifiable and user-friendly.

### Definitions, acronyms and abbreviations

* program administrator = person who is able to configure every detail of the scheduling constraints:
  courses, classrooms, teacher, number of students, theory or practical classes...
* teacher = person who defines the details of all the classes assigned to him:
  assistents,required resources and facilities, assistents...
* student = someone who can register for programs and courses
* user = program administrator, teacher or student
* guest = someone who is not yet logged in and identified as user
* program = combination of multiple courses, as provided by the university

### References

IEEE Std 830-1998, IEEE Recommended Practice for Software Requirements Specifications, _IEEE Computer Society_, 1998

### Overview

Section 2 will cover an overview of the general requirements. Using scenarios it will describe how the application 
should work. The functions that will be implemented and the user characteristics will be portrayed there, next to
the constraints the application is bound by. The requirements will be further analyzed and described in-depth 
in section 3.

This document largly follows the IEEE Std 830-1998.

## Overall description

### Product perspective

Xiast is an independent open-source product and will be free to use by anyone. Xiast aims to provide more personally 
modifiable rosters than other applications on the market, using a user-friendly interface. Alongside the 
web-application, there will be a mobile android application with some specific features and support for mobile 
users. Both the web and mobile application will use data stored on a database-server.

#### System interfaces

#### User interfaces

#### Hardware interfaces

#### Software interfaces

#### Communication interfaces

#### Memory constraints

#### Operations

#### Site adaptation requirements

### Product functions

Xiast will accommodate three types of users: students, teachers and programadministrators. Each of these types 
has their own rights and own functions.

Students register for a program or courses and will be able to check their personal schedule online or on their 
smartphone. They will be notified of any last-minute changes made to their schedule.

Teachers get certain courses assigned by programadministrators. They will be able to check their roster online or 
on their smartphone. They will be able to send their specifications regarding their courses 
(like maximum number of students, or the need of a overhead-projecter, days they won't be able to teach...) to 
the program administrator, who will try to implement these request in the scheduling, if possible. If a teacher, for 
some reason, cannot make it to his scheduled class, he can notify the application, which will update the rosters 
for all students attending said class. Teachers can request certain changes to their personal roster, but only a 
program administrator is able to actually change the roster and the details of it.

Program administrators are in charge of a bundle of courses, which combined together form a standard program. They 
specify which courses are part of the program, how many courses their will be, which courses are obligatory and 
which aren't... They also assign a teacher to each cours. They can make or delete courses and are able to modify 
every constraint regarding the scheduling. 

The program administrator will input certain courses and constrains and 
Xiast will compute and display the best roster possible given said constraints. 

Every constraint requested by a teacher or put in by an administrator receives a priority. Constraints with 
a higher priority will be taken into consideration first. Xiast computes and displays the best roster given said 
constraints. If there are any overlaps, Xiast will highlight them and the program administrator has the choice to 
either make a change manually or let Xiast try come up with alternative solutions. After any (manual) changes are 
made, the administrator has to give his fiat before the roster becomes gets picked and made visible for all other 
users. When a new schedule is being made and an overlap between courses occurs, Xiast will try to adjust the 
scheduling of certain courses by ignoring their lowest priority constraints. By ignoring these low priority 
constraints, a new roster withouht overlaps may emerge. The administrator of the course which 
has had a change in constraints or which needs to be rescheduled will receive a notification. A program 
administrator may choose to change the scheduling or constraint of the courses manually or even keep the overlap.

### User Characteristics

### Constraints

### Assumptions and dependencies

## Specific Requirements

### External interfaces

### Functional Requirements

#### User Class 1: Guest

##### Functional Requirement 1.1

**ID**: FR1  
**TITLE**: Log-in  
**DESCRIPTION**: When a guest correctly enters the username and password of an existing account, he will be logged in,
giving him the appropriate rights.  
**PRECONDITION**: "Home" screen is showing.  
**SCENARIO**:  
1. Guest chooses his preferred language (English or Dutch).
2. System displays "Log In" screen in the chosen language.
3. Guest enters his username and password and clicks the "log in" button.  
4. System logs the guest in as user and gives him/her the appropriate rights.  
5. System shows the appropriate "Account" screen.  
**EXEPTIONS**:  
2A. Guest clicks "back"
  1. System returns to "Home" screen.

4A. Guest entered wrong password
  1. System displays an error message stating that either the password was incorrect or the username doesn't exist.
  2. Return to step 3.

4B. Guest entered a username that doesn't exist.
  1. System displays an error message stating that either the password was incorrect or the username doesn't exist.
  2. Return to step 3.

**POSTCONDITION**: The guest is now logged in as a user and the system is showing his/her "Account" screen.

#### User Class 2: Student

##### Functional Requirement 2.1

**ID**: FR2  
**TITLE**: 
**DESCRIPTION**:  
**PRECONDITION**:   
**SCENARIO**:  
1.  
**EXEPTIONS**:  
**POSTCONDITION**: 

### Performance requirements

### Logical database requirements

### Design constraints

### Software system attributes

### Other requirements

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
 
elk vak hoort bij een programma
programmabeheerder = alles lezen en zijn eigen programma aanpassen
voorstel ook laten zien aan titularis
programmabeheerder kiest uit mogelijkheden als er botsingen zijn
priority achtig iets
constraints van titularis naar programmabeheerder en opdelen in soorten
conflict programmabeerder stuurt request naar andere programmabeheerder
filter voor belangrijke constraints
neuristiek rules of thumb => prioriteit


