DevOps Sandbox
==============
This repository represents a sandbox for investigating and playing around with different configuration management tools such as [Chef](http://getchef.com), [Puppet](http://puppetlabs.com), and [Vagrant](http://www.vagrantup.com). Additional tools may be added depending on their necessity but, by and large, this repository is meant to be a resource for recording knowledge and creating test cases for using these tools that both the novice and the experienced can take advantage of.

What is "DevOps"?
-----------------
DevOps (a portmanteau of development and operations) is a software development method that stresses communication, collaboration and integration between software developers and information technology (IT) professionals. It is a response to software dependency and the role of IT operations in maintaining that relationship; aiming to help organizations rapidly produce software products and services.

See the [_DevOps_](http://en.wikipedia.org/wiki/Devops) article on Wikipedia for more information.

Case-Studies, not Sources
-------------------------
The repository represents its code in terms of case-studies with respect to an individual tool. Sometimes those tools have dependencies on other tools in the repository (e.g. Vagrant and Chef solo), but one tool is always the focus of the case study.

For instance, in the example given above Chef solo utilizes VMs through Vagrant; case studies focusing on Chef solo and preparing a VM environment with chef solo will fall under the chef solo case study, not the Vagrant case studies.    

Documentation
-------------
Each case study should maintain a `README.md` file at the root of the study, which describes the intent of the case study and discusses some of the technical aspects of it.

General documentation on getting set up with any of the tools will be available in the [docs](./docs) folder at the root of the project.