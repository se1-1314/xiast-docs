# Software Configuration Management Plan

## Introduction

In this document we will describe the workflow that needs to be followed for the Xiast project.
We will also talk about the two **Git** repositories that will be used.
This document will also be included in an adapted form in the SPMP.

## The repositories

For this project we will be using two distinct Git repositories, each with their own specific purpose.

### xiast-docs

The `xiast-docs` repository will be used to hold all documents related to the project.
This includes reports made during meetings and all plans made by the different leaders and managers.

Every manager has his own directory inside the `management` directory.
In this directory, the manager can put all files related to his work and reports.
If a manager wants to make a change to the main directory structure, he is free to do so but must contact the configuration manager about it.
By doing this the software configuration manager can keep the directory structure in the SCMP up-to-date.

The current directory structure, which may be subject to change, is:

* **/**
	* **management** directory containing all official documentation
		* **configuration** concerning project configuration
		* **design** concerning software design
		* **implementation** concerning implementation
		* **project** concerning project planning and management
		* **quality** concerning software quality and testing
		* **requirements** concerning all software requirements
	* **meetings** contains all agendas and reports of meetings
	* **manuals** contains all files related to the Xiast manuals
	* **templates** contains templates for deliverables


### xiast

The `xiast` repository is the main repository that contains all the code for both the server and the Xiast website.
The directory structure is that of a basic Leiningen project:

* **/**
	* **resources**
		* **dictionaries** directory containing translates strings for internationalisation
		* **public** directory containing public files such as images, CSS stylesheets, ...
		* **templates** directory containing all website templates
	* **src** directory containing the source files
	* **test** directory containing all tests

The `xiast` repository is for code and related resources (graphics, sound, SQL, ...) only.

## Tracking issues

With GitHub's issue tracker, which can be found at `https://github.com/se1-1314/xiast/issues`, we can create so-called *issues*.
An issue can be anything from a bug, request for implementation or suggestion, goal, ...
By using this tool we can achieve a workflow that will make it easier for both us and others to track the progress of the project.

When all requirements of the project are known, we will start splitting up the requirements in one or more smaller "tasks" that need to be finished in order to implement the requirement.
These issues can then be bundled into a *milestone* which denotes the requirement or part of the requirement that needs to be implemented.
Milestones feature progress trackers which again makes it really easy for people to see how much still needs to be done for a requirement.

For example: "Functioning user system" can be a milestone, with issues such as "User registration" and "User login", or "Access control" with "Assigning user rights" and "Rights checking" as some of the issues.

As mentioned earlier, the issue tracker can and must be used for more than just tracking progress of the requirements.
Issues will be made to report bugs and propose fixes, to propose enhancements or request extra functionality, to report on critical errors and so on.
Every issue features a comment section which makes it easy for team members to discuss requests, bugs, and so on.

It is important that the issue tracker is kept clean at all times.
What this means is that all issues and milestones have proper descriptions and descriptive titles, issues that are finished must be closed (see workflow), when one team member takes over an issue from another team member this must be updated on the tracker, ... and so on.

The usage of the issue tracker, when done properly, causes less overhead on the project because we do not need to maintain our own tracker or website.

## Git workflow

When working with Git, there are multiple workflows possible.
Considiring the size of the team and project, we will be using the so called **feature branching workflow**.
This workflow allows us to tightly integrate the issue tracker into our project.

### Branches
There will always be one central branch: the **master** branch.
This branch is the actual "master copy" of our project and should contain preferably only working code.

Whenever a team member wants to implement changes, he must first branch the master branch into a new one and commit all his changes to the newly created branch.
This branch, which is created locally, needs to be published to GitHub.
This doesn't only make it easier to track changes on the branch, but also makes it easier to transfer the work to someone else.

Because some issues have a really small workload and can be solved in a single commit, it's possible to solve multiple issues on one single branch instead of creating a branch for every issue.

To keep things uniform, branch names must be in lower case only and use dashes instead of spaces.

### Merging
After the work has been done and the issue is implemented, the working branch needs to be merged into the `master` branch.
It is mainly the team member's responsibility to avoid merge conflicts!

Conflicts can be avoided more easily by periodically pulling and merging the `master` branch into the working branch, and not vice versa.
By doing this regulary, conflicts that will occur will be smaller than they would be if we didn't merge at all.

If and only if all work is done and the working branch is conflict free and the head of the branch is pushed to GitHub, steps can be taken to merge the working branch into the `master` branch.
This is done by making a **pull request**.

### Pull request
When making a pull request, select the `master` branch as the base branch and the working branch as the compare branch.
If the branch that is being merged closes one or more issues, they should be referenced in the description.
If done correctly, like described in [this guide](https://help.github.com/articles/closing-issues-via-commit-messages), the issues can be automatically closed when the pull request gets accepted.

After making the pull request, it is the (backup) implementation manager's responsibility to accept or deny the request.
The first step is to review the code by testing it locally to see if it actually works.
If he so chooses, he can also simulate the merging locally to see if it works with previous accepted pull requests.

If the code works and there are no conflicts, the pull request can be accepted and close.
After this, the appropriate issue should be closed too and a comment with a link to the pull request should be made.
To avoid "branch pollution" the working branch can safely be removed from the repository by GitHub after accepting the pull request.

If conflicts arise during merging because of for instance earlier accepted pull requests, the implementation manager can choose to fix the conflicts himself manually or just denying and closing the pull request.
The second option is advised.
In this case, the team member must fix his code and make a new pull request.
The same is valid for when there are problems with the code itself.

### Assigning and reassigning issues
To keep track of who is working on what and to avoid double work, members should assign themselves or others to issues.
This can be done on the issue tracker itself.

If a team member is stuck, the member is free to transfer the work to someone else.
But he must not forget to reassign the issue to the other person

### docs
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
