**Author:**Kwinten Pardon

**Version:** 0.1.1

## Introduction

This document describes the information that our documentation must contain. It will also describe the methods that will be used to generate documentation for the source code. Software documentation comes in two different forms. Documentation for the end user and documentation for developers. This Software documentation plan only handles the creation of developers documentation

## Purpose

The purpose of the created documentation is for the reader to understand the code and be able to write additional functionalities relying and using the documented code without having to read the source code.

## Documented information

### Source File

Source file must contain certain information before any functionalities or code has been written. This information may be written after or before the required imports.

The required information is listed underneath

-   Author(s)

-   Date of creation

-   Summary of the functionalities it contains

### Source Code

As classes and objects are different from functions, an other set of information is required to be documented. Which information is to be documented can be found underneath in corresponding sections.

### Classes / Objects

Above each class or object the following information should be written

-   Authors(s)

-   Date of creation

-   Summary of the functionalities it contains

-   Explanation of fields

### Functions

Above each function the following information should be written

-   Author(s)

-   Date of creation

-   Explanation of the paramaters

-   Type

-   Explanation of the return value

-   Type

-   Exceptions

## Method of documenting

As stated above, the to be documented information must be written in the source code. The documentation will be created by parsing this information from the source file. To be able to this, this information must be written in a certain syntax.

### Syntax

We will be using an XML syntax to write the necessary information in the source code. The XML lines will be parsed from the source code to create the documentation.

The XML tags that will be used have yet to be determined.
