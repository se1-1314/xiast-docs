# Software Configuration Management Plan

## Introduction

In this document we will describe the workflow that needs to be followed for the Xiast project.
We will also talk about the two **Git** repositories that will be used.
This document will also be included in an adapted form in the SPMP.

## The repositories

For this project we will be using two distinct Git repositories, each with their own purpose.

### xiast-docs

The `xiast-docs` repository will be used to hold all documents related to the project.
This includes reports made during meetings and all plans made by the different leaders and managers.
The current directory structure, which may be subject to change, is:

* **/**
	* **management** directory containing all official documentation
		* **configuration** concerning project configuration
		* **design** concerning software design
		* **implementation** concerning implementation
		* **project** concerning project planning and management
		* **quality** concerning software quality and testing
		* **requirements** concerning all software requirements
	* **reports** contains all the reports of meetings

If a team member wants to add changes to this structure, an issue should be created.
This is because the configuration manager, who is responsible for this document, should always be informed so this document can be kept up-to-date.

### xiast

The `xiast` repository is the main repository that will contain all the code for both the server and the Xiast website.
The current directory structure, which again may be subject to change, is:

* **/**

## Git workflow

When working with Git, there are multiple workflows possible.
Considiring the size of the team and project, we will be using the so called **something something something Workflow**.

More information soon.

## Project website

One of the requirements of the project is a website that can be used to track the progress of the project.
Instead of focussing on implementing our own system, we will make full use of the tools GitHub is providing us.

The website can be reached at `http://se1-1314.github.io/xiast`.
This page, which is generated using GitHub Pages, contains information about the project, including download links for the source code and links to various documents.

To keep track of the project's status however, we will use the built-in issue tracker of GitHub.

## Tracking issues

GitHub's issue tracker for the project can be found at `https://github.com/se1-1314/xiast/issues`.
This tool allows us to create so-called *issues*.
An issue can be anything from a bug, request for implementation or suggestion, goal, ...
Multiple issues can be bundled as *milestones* which can be tracked on the appropriate tab on the issues page.

By viewing the milestones, we can easily see how much work has been done and how much still remains.
It's easier to let GitHub generate all this information for us since this gives us more time to spend on actual work.

However, it is important that these things are kept maintained at all times.
This means that when all the requirements are finished, they are added on the issue tracker.
And everytime there is a suggestion, bug or whatever, it needs to be added to the appropriate milestones.

It's also required to give issues and milestones good descriptions and descriptive titles so people can actually make sense out of them.
If required, team members can be made responsible for certain issues by assigning them for these.
Milestones can also be assigned to members, but this process is rather artificial in which the responsible member must be stated in the description.

Because we are working with separate repositories for code and documentation, all status tracking related to documentation should be done in `xiast-docs`.
