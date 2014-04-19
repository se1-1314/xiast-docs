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

## Project website and requirements dashboard

One of the requirements of the project is a website that allows team members to track the project's progress, and allows people to find out more about the project.
Such a website can be developed and maintained by making use of GitHub Pages.

GitHub Pages is essentially an automated system that generates static websites by making use of [Jekyll](http://jekyllrb.com/).
Jekyll is a tool that can transform plain text files and/or markdown in a Jekyll project to ordinary HTML files, thus providing a static website which can be hosted on any webserver.
With GitHub Pages a site can be created for a project by placing a Jekyll project in the `gh-pages` branch of a repository (in this case the `xiast` repository).
Every time changes are committed to this branch GitHub Pages will regenerate the website and host it on its own servers.
For Xiast, the website can be reached at `http://se1-1314.github.io/xiast`.

Usage of GitHub Pages makes maintaining the website significantly easier and less worrisome.
Many clean and professional looking templates are freely available for Jekyll, eliminating the need of designing a new website from scratch.

The requirements dashboard, which can be viewed on the website, can simply be updated by editing the `requirements.md` file of the Jekyll project.
This can be done both in a local copy of the repository, or on the GitHub website itself by a team member.

## Tracking issues

With GitHub's issue tracker, which can be found at `https://github.com/se1-1314/xiast/issues`, we can create so-called *issues*.
An issue can be anything from a bug, request for implementation or suggestion, goal, ...
By using this tool we can achieve a workflow that will make it easier for both us and others to track the progress of the project.

Issues will be made to report bugs and propose fixes, to propose enhancements or request extra functionality, to report on critical errors and so on.
Every issue features a comment section which makes it easy for team members to discuss requests, bugs, and so on.

To achieve a better workflow, the issue tracker must be kept as clean as possible at all times.
What this means is that all issues and milestones have proper descriptions and descriptive titles, issues that are finished must be closed (see workflow), when one team member takes over an issue from another team member this must be updated on the tracker, ... and so on.

## Git workflow

When working with Git, there are multiple workflows possible.
Considiring the size of the team and project, we will be using the so called **feature branching workflow**.
This workflow allows us to tightly integrate the issue tracker into our project.

### Branches
There will always be one central branch: the **master** branch.
This branch is the actual "master copy" of our project and should contain preferably only working code.
No commits will be pushed directly to the `master` branch.

Whenever a team member wants to implement changes, he must first create a new branch from the current HEAD of the `master` branch.
The member can then push new commits to the newly created local branch.
Branch names must be kept descriptive, but not too long, and when possible only one problem, bug, requirement, or other must be dealt with in a branch.

### Merging
When a feature is completed, a bug is fixed or something else, and after testing, a branch is ready to be merged into the `master` branch.
The standard procedure for this is to first fetch or pull changes from the remote (GitHub) repository, merge the `master` branch into the local branch, publish the branch to GitHub and create a pull request (see below).

Merging other branches into one's own branch can be done without making a pull request first, but merging into the `master` branch without a pull request is not done.
To avoid merge conflicts or broken code however, it is advised to regularly fetch and merge the master into one's own branch.
It is also possible to publish a branch to GitHub, allowing other people to access your branch or merge changes from your branch into their own branch.

### Pull request
After code is tested and deemed working, a developer can create a **pull request** for hisworking branch.
When making a pull request, select the `master` branch as the base branch and the working branch as the compare branch.
If the branch that is being merged closes one or more issues, they should be referenced in the description.
If done correctly, as described in the following [guide](https://help.github.com/articles/closing-issues-via-commit-messages), the issues can be automatically closed when the pull request gets accepted.

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

### docs
For the `xiast-docs` repository, we don't need to use the feature branch workflow, we can just use a **centralized workflow**.
This means we won't use branching and we will just commit to the master branch.
