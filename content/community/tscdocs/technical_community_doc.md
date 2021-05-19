+++
title = "Technical Community Document"
id = "community"
aliases = [
"/docs/tsc/FD.IO-Technical-Community-Document-12-12-2017.pdf",
]
+++

# Technical Community Document

**Relentlessly focused on data IO speed and efficiency for more flexible and
scalable networks and storage**

# Introduction

This Technical Community Document sets forth additional details concerning the
operation of the technical community of FD.IO Project a Series of LF Projects, LLC
(the “Project”).  Capitalized terms not defined in the Technical Community
Document will have the meanings ascribed to them in the technical charter for the
Project.  The Technical Community Document may be amended from time to time by
the TSC, and is subject to the terms of the Project’s technical charter.

## 1 Guiding Principles

FD.IO will operate transparently, openly, collaboratively, and ethically.  Project
discussions, proposals, timelines, and status must not merely be open, but also
easily visible to outsiders.

FD.IO will consist of multiple, independent, projects.

Each project will have a single code repository, and its own set of Committers who
have exclusive rights to commit code into that project’s repository. Being accepted
as a Committer on one project does not grant commit rights to other projects.

Technical decisions (including release decisions) for a project should be made by
consensus of that project’s Committers.  If consensus cannot be reached, decisions
are made by a majority vote of a project’s Committers.  Committers on a project
may, by majority vote, delegate (or revoke delegation of) any portion of the project’s
decisions to an alternate open, documented, traceable decision-making process.

Nothing in this Technical Community Document shall be interpreted in such a way
as to violate these principles.

# 2 Structure of the Technical Community

The Technical Community consists of multiple projects and a Technical Steering
Committee that spans across all projects.

## 3 Per Projects

## 3.1 Project Roles

### 3.1.1 Contributor

A “Contributor” is someone who contributes code or other artifacts to a project.  
Contributors work with a project’s Committer and the project’s sub-community.  A
Contributor may be promoted to a Committer by the project’s Committers after
demonstrating a history of meritocratic contribution to that project.

### 3.1.2 Committer

For each project there is a set of Contributors approved for the right to commit code
to the source code management system (the “Committers”) for that project.

Committer rights are per project; being a Committer on one project does not give an
individual committer rights on any other project.

The Committers will be the decision makers on all matters for a project including
design, code, patches, and releases for a project.

Committers are the best available individuals, but usually work full-time on
components in active development.

### 3.1.3 Project Technical Leader (“PTL”)

Each project will have one PTL.  Each PTL has a term of one year, but may be
removed at any time by majority vote of the project’s committers.

A single individual may serve as PTL for one or more projects.

## 3.2 Operations

### 3.2.1 Project Decision Making Process

Technical and release decisions for a project should be made by consensus of that
project’s Committers. If consensus cannot be reached, decisions are by majority vote
of a project’s Committers. Committers may, by majority vote, delegate (or revoke
delegation) of any portion of such decisions to an alternate open, documented, and
traceable decision making process.

### 3.2.2 Committer Lifecycle

#### 3.2.2.1 Adding Committers

Initial Committers for a project will be specified at project creation.

Committer rights for a project are earned via code contribution and community
trust.  Committers for a project select and vote for new Committers for that project,
subject to TSC approval.

New Committers for a project should have a demonstrable established history of
meritocratic code contribution.

#### 3.2.2.2 Removing Committers

A Committer may voluntarily resign from a project by making a public request to the
PTL to resign.

A Committer for a project who is disruptive, or has been inactive on that project for
an extended period (e.g., six or more months) may have his or her Committer status
revoked by the project’s Project Technical Leader (PTL) or by super-majority vote of
the project’s committers.

The Project Technical Leader is responsible for informing the Technical Steering
Committee (TSC) of any committers who are removed or resign.

Former committers removed for reasons other than being disruptive may be listed
as ‘Emeritus Committers’. That title expresses gratitude for their service, but
conveys none of the privileges of being a Committer.

### 3.2.3 Project Technical Leaders

A project is required to elect a PTL. The PTL acts as the de facto spokesperson for
the project.

#### 3.2.3.1 Project Technical Leader Candidates

Candidates for the project’s PTL will be derived from the Committers of the Project.

Candidates must self nominate.

#### 3.2.3.2 Project Technical Leader Voters

Only Committers for a project are eligible to vote for a project’s PTL.

#### 3.2.3.3 Project Technical Leader Election Mechanics

Election of a project’s PTL shall use a multiple-candidate method, e.g.:

* [Condorcet](http://en.wikipedia.org/wiki/Condorcet_method) or
* [Single Transferable Vote](http://en.wikipedia.org/wiki/Single_transferable_vote)

## 3.3 Project Lifecycle

Projects have a lifecycle. That lifecycle is characterized by project ‘states’ and
project ‘state transitions’. In addition, all projects are required to be within the
‘Scope’ for FD.IO projects.

## 3.3.1 Project Scope

Project creation reviews approved by the TSC are limited to the following scope:

* IO –Hardware/vHardware <-> threads/cores
* Processing
* Classify
* Transform
* Prioritize
* Forward
* Terminate
* Management Agents
* Control/Manage IO/Processing
* Supporting Projects
* Testing/Tools/Infrastructure
* Integration with other systems

### 3.3.2 Project States

| Project State |Description |
|---------------|--------------|
| Proposal | Doesn’t exist yet, has no real project resources, but is proposed for review by the TSC |
| Incubation | Project has resources, but is recognized to be nascent | 
| Mature | Project is a fully functioning open source project with resources in community roles and established cadence of releases |
| Core | Project is core to fd.io |
| Grouping | Project used to voluntarily ‘group’ together thematically related projects.  Grouping projects have a Project Management Committee (“PMC”), which votes on its decisions including accepting new PMC members and accepting (or expelling) new projects into the grouping.  PMC Members must be Committers of projects grouped by the Grouping Project, and their lifecycle is similar to those for Committers.  Projects must vote to join a Grouping Project, and may at any time vote to leave a grouping Project. |
| Archived | Project that has ben recognized as dead or abandoned, and has been archived, as it is no longer a going concern. |

### 3.3.3 Project State Transitions

The valid state transitions and their associated reviews are:

| From State | To State | Review |
| ---------- | -------- | -------|
| &lt;null&gt; | Proposal | |
| Proposal | Incubation | Creation Review |
| Incubation | Mature | Graduation Review |
| Mature | Core | Promotion Review |
| Proposal | Grouping | Group Creation Review |
| {Incubation, Mature, Core, Grouping} | Archived | Termination Review |

### 3.3.4 Project Reviews

For each review, there will be a publicly visible wiki/web template filled out
containing relevant review information.

The review document must be posted and announced for public comment for at
least 2 weeks prior to the date the review is scheduled.

Revised ideally should be conducted in a manner that is sensitive to the global
nature of the community (i.e., geography and time zone dispersion)

#### 3.3.4.1 Creation Review

Proposal Posted and Announced for 2 weeks:

* Name
* Project Contact Name and Email
* Repository Name, should be:
  * Lower case
  * Short
  * Suitable for use as a C identifier
* Description
* Scope
* Initial Committers
* Vendor Neutral
* Meets Project Policies (including the requirements of the Project’s technical 
charter).

##### Review by TSC and Approval

Creation reviews should be an evaluation of the TSC as to whether the proposal
meets the mechanical criteria of:

* Having specified the required information for the review
* Being within the Project’s technical charter, particularly scope
* Having a clear and well-defined scope.  A well defined scope should allow 
someone to clearly answer the following questions:
  * What work is in and out of scope of this project
  * What kinds of problems is this project seeking to solve

In addition the TSC is counseled to consider that to broad or all encompassing a
scope can be unhealthy for the community at large, and thus to take that into
consideration when approving project creation.

Project Infrastructure resources will be provisioned upon approval of a project’s
creation review.

#### 3.3.4.2 Graduation Review

Graduation Proposal Posted and Announced for 2 weeks:

* Working code base
* Active Community
* History of Releases (using Mature Release Process)
* Committers vote on seeking graduation
##### Review by the TSC and Approval

Graduation reviews should be an evaluation of the TSC as to whether the 
proposal meets the mechanical criteria of:
* Having specified the required information for the review
* Having demonstrated a working code base
* Having demonstrated a history of releases using the mature release process

#### 3.3.4.3 Promotion Review

Promotion Proposal Posted and Announced for 2 weeks:

* Statement of Centrality of Role
* Project Technical Leader Name & Email
* Committers vote to seek promotion

##### Review by TSC and Approval

Promotion reviews should be an evaluation of the TSC as to whether the Statement
of Centrality of Role for the project truly rises to the level of being central to fd.io.

#### 3.3.4.4 Grouping Review

Grouping Proposal Posted for 2 weeks

* Name of Grouping Project
* Scope of Acceptable Subprojects
* Initial PMC members
* At least two identified initial subprojects
* Vote of Committers on initial subproject seeking inclusion

##### Review by the TSC and Approval

Grouping Reviews should be an evaluation of the TSC as to whether:
* The Scope of the Subproject is well defined
* Members of the initial PMC are Committers on the subproject to be included.
* The proposed initial subproject have in fact voted to be included

#### 3.3.4.5 Termination Review**

Termination Proposal Posted and Announced for 2 weeks:

* States reason for project termination being sought
* Calls out impact on other projects, users, communities, and how those will be 
mitigated
* Indicates where the project would be archived
* Can be initiated by vote of project committers
* Can be initiated by TSC or PMC of a grouping project containing that project if there
are either no remaining committers for the project, or there have been no commits
to the SCM in 18 months.

## 3.4 Mature Release Process

A Project’s Committers make all decisions about Releases of that Project. However,
to be eligible to be considered ‘Mature’, and project must demonstrate a history of
following the Mature Release Process. The purpose of the Mature Release Process is
to insure openness and maximum opportunity for participation. The idea is to have
a simple, clear, public declaration of what a project intends to do and when, and
what was actually done in a release cycle. Towards that end, a project following the
‘Mature Release Process’ should have a Release Plan published at the beginning of
its release cycle by its committers, and a Release Review just prior to the project
release.

Both Release Plan and Release Review documents are intended to be relatively
short, simple, and posted publicly on the wiki to assist project in coordinating
amount themselves and the general world in gaining visibility.

These should contain roughly the following sections:

### 3.4.1 Release Plan

* Introduction
* Release Deliverables
* Release Milestones
* Expected Dependencies on Other Projects
* Compatibility with Previous Release
* Themes and Priorities
* Other

### 3.4.2 Release Review

* Features delivered
* Non-Code Aspects (user docs, examples, tutorials, articles)
* Architectural Issues (if any)
* Security Issues (if any)
* Quality Assurance (test coverage, etc)
* End-of-life (API/Features EOLed in Release)
* Summary of Outstanding Bugs
* Summary of Standards Compliance
* Delta between planed schedule and actual schedule

# 4 Technical Steering Committee (TSC)

## 4.1 TSC Roles

### 4.1.1 TSC Members

TSC Membership shall consist of:

* Legacy Members
* Core project’s Project Technical Leaders (PTLs).
* A number of Committer-at-Large Elected Members to be set by the TSC.
* Up to two TSC Appointed members

No more than 50% of the TSC seats may be held by persons employed by the same company.

### 4.1.2 TSC Chair

* The TSC Member shall elect a TSC Chair.
* The TSC Chair shall have a term of one year.
* The TSC Chair may stand for re-election.

## 4.2 TSC Operations

### 4.2.1 TSC Decision Making Process

Decisions of the TSC should be made by majority vote.

### 4.2.2 TSC Chair Elections

The TSC will elect from among TSC members, the TSC Chairperson.

#### 4.2.2.1 TSC Chair Candidates

Candidates for a TSC Chair must be TSC Members.

Candidates must self nominate.

#### 4.2.2.2 TSC Chair Voters

Only TSC Members are eligible to vote for TSC Chair.

#### 4.2.2.3 TSC Chair Election Mechanics

Election of a TSC Chair shall use a multiple-candidate method, e.g.:

* Condorcet: http://en.wikipedia.org/wiki/Condorcet_method; or Single 
* Transferable Vote: http://en.wikipedia.org/wiki/Single_transferable_vote

#### 4.2.3 Committer-at-large TSC Member Elections

#### 4.2.3.1 Committer-at-large TSC Member Candidates

Candidates for a Committer-at-Large Membership on the TSC must be Committers
on a fd.io project in good standing.

Candidates must self nominate.

#### 4.2.3.2 Committer-at-large TSC Member Voters

All of the Committers on all fd.io projects vote together for Committer-at-Large
members of the TSC.

#### 4.2.3.3 Committer-at-large TSC Member Election Mechanics

The TSC shall establish a clear procedure for nomination and election of Committer-
at-Large members.

Election of a TSC Chair shall use a multiple-candidate method, e.g.:

* [Condorcet](http://en.wikipedia.org/wiki/Condorcet_method) or 
* [Single Transferable Vote](http://en.wikipedia.org/wiki/Single_transferable_vote)

#### 4.2.3.4 Committer-at-large TSC Member Term

Committer-at-large TSC Members shall serve a one year term.

### 4.2.4 TSC Appointed Members

The TSC may itself appoint up to two members of the TSC.

#### 4.2.4.1 Number of TSC Appointed Members

* The TSC may at any point by majority vote add up to two TSC Appointed member seats to the TSC.
* The TSC Appointed seat expires at the conclusion of the term of the person selected to fill it.

#### 4.2.4.2 TSC Appointed Candidates

* Candidates for TSC Appointment to the TSC are nominated by the existing TSC members.
* Candidates must accept nomination prior to consideration.
* Failure to accept within two weeks is considered declining the nomination.

#### 4.2.4.3 TSC Appointed Member Voters
* Existing TSC members may vote on admitting a candidate
  * In the event that there are more candidates under consideration than available TSC Appointed seats, a multiple-candidate method, e.g.:
    * [Condorcet](http://en.wikipedia.org/wiki/Condorcet_method) or
    * [Single Transferable Vote](http://en.wikipedia.org/wiki/Single_transferable_vote)

#### 4.2.4.4 TSC Appointed Member Term
TSC Appointed Members shall serve a one year term.

### 4.2.5 Legacy Members

The TSC has three Legacy Members from its time as an independent foundation:
* Ed Warnicke
* Joel Halpern
* Ray Kinsella

The status of Legacy TSC membership should be revisited annually.

## 4.3 Responsibilities

The TSC is responsible for, pursuant to the requirements of the Project’s technical
charter:

* Foster cross project collaboration
* Foster relationships and collaboration with other communities.
* Organize cross project activities
* Hold project lifecycle reviews for projects (Creation Reviews, etc.).
* Approve projects’ selection of new Committers.

## 4.4 Coordinate Releases

The TSC may choose to organize a Coordinated Release.  Such a Coordinated Release
may impose additional requirements on projects that choose to participate in it.  
Projects must choose to participate; they cannot be compelled to do so.

Should the TSC choose to create a Coordinated Release it should provide, up front a
Coordinated Release Plan (CRP) detailing:

* Introduction
* Requirements for Participation
* The scheduling, practice, quality (but not technical content) requirements for 
a project to participate.  In practice these are expected to build upon the 
‘Mature’ project standards.
* Milestones & Release Candidates
* Dates and requirements for milestones and release candidates
  * This should include by which Milestone a Project must opt in to join
  * This should include by which Milestone freezes of various sorts (for example 
API freeze) need to happen
* Participating Projects
  * Projects which have opted into the Coordinated Release
* Communication Channels

# 5 Evolution of Technical Community Document

The TSC has ability to amend this Technical Community Document, subject to the
technical charter of the Project.

The normal amendment process is for either the TSC or the Committers-at-Large to
propose changes using simple majority of the full TSC to resolve conflicts.  
