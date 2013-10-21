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

## Tracking issues

GitHubs issue tracker for the project can be found at `https://github.com/se1-1314/xiast/issues`.
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

## Git workflow

When working with Git, there are multiple workflows possible.
Considiring the size of the team and project, we will be using the so called **feature branching workflow**.
This workflow allows us to tightly integrate the issue tracker into our project.

With this workflow, we always have one central branch, the **master** branch.
Every time we want to implement a new feature, a bugfix or something else, we first make a new issue for this, as discussed previously.
When somebody gets assigned to a certain issue, he can now make a new branch from the master branch named after the issue.
This branch, which is created locally (and always after pulling changes first), should also be published on github.
By doing this we are sure to always have a backup copy and also makes it easier to re-assign the issue to another person.

After a person has finished implementing the issue, the branch should now be ready to be merged into the master branch.
Instead of doing this merge manually using git, a pull request should be made on GitHub.
In the description of the pull request, we will always refer to the issue (by URL) that this branch solves, alongside any other notes.
If we're lucky, there are no conflicts and the branch can be merged automatically.
Otherwise, it's the software configuration managers responsibility to solve the merge conflict manually OR just do it yourself (???).

To avoid merge conflicts and other nasty problems, it's good practice to try and keep everything up-to-date.
Generally, we can do this by merging the master branch into a feature branch.
The person currently assigned to this feature branch is then responsible for any conflicts, but because this is done regularly, these conflicts will hopefully be smaller and easier to handle then conflicts we would get if we didn't regularly merge at all.

After (or before?) closing a pull request, the _responsible person_ must review the changes in order to confirm that the feature branch has solved the issue.
Only after confirming this the issue can be closed and the feature branch may be deleted to prevent branch pollution.

Furthermore it might be a good practice to keep the workload for each issue, if possible, rather small.
This way, less time will be spent on each branch which will further lower the chances of nasty merge conflicts.

For the `xiast-docs` repository, we don't need to use the feature branch workflow, we can just use a **centralized workflow**.
This means we won't use branching and we will just commit to the master branch.

## Project website

One of the requirements of the project is a website that can be used to track the progress of the project.
Instead of focussing on implementing our own system, we will make full use of the tools GitHub is providing us.

The website can be reached at `http://se1-1314.github.io/xiast`.
This page, which is generated using GitHub Pages, contains information about the project, including download links for the source code and links to various documents.

GitHub Pages is in essence a static website generator.
This means that, given the contents of the site, it only needs to generate all the HTML and related files once.
This not only makes it faster, but also a lot easier.

The automatic page generator can be found on the settings page of the project.
The files it generates are located in the `gh-pages` branch of the `xiast` repository.
Commiting to this branch thus allows us to edit the page manually, although it is highly advised to keep using the automatic page generator and edit the content of the site using markdown.

To keep track of the project's status however, we will use the built-in issue tracker of GitHub.
