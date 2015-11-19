DevOps Sandbox
==============
This repository represents a sandbox for investigating and playing around with different configuration management tools such as [Chef](http://getchef.com), [Docker](https://www.docker.com/), [Puppet](http://puppetlabs.com), [Salt Stack](http://saltstack.com/), and [Vagrant](http://www.vagrantup.com).

Additional tools may be added depending on their necessity but, by and large, this repository is meant to be a resource for recording knowledge and creating test cases for using these tools that both a novice and an experienced user can make use of.

For most (all?) of these examples, we're using Vagrant to create a VM and then the other tools (e.g. docker, puppet, etc.) are used to provision that machine. This is done to not only sandbox the tests but create some sort of consistency.

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

Getting Started
===============
In order to test and run case studies, you'll have to install a few tools: Ruby, VirtualBox, etc. This portion of the README addresses installing those tools, and where appropriate refers you to additional documentation in-and-out of the repository.

Installing Ruby
---------------
While installing Ruby independent of tools like Chef and Puppet is not required, it may result in a cleaner install base without a lot of unnecessary clutter in your system; especially if you use Windows.

Since the instructions for installing Ruby can be largely OS dependent, this documentation will refer you to independent documentation on installing Ruby for your given operating system.

  * Installing Ruby on [Windows](./docs/Install_Ruby_on_Windows.md).

Installing VirtualBox
---------------------
VirtualBox is possibly the easiest tool to set up; if you've ever played around with virtualization before you may even already have it installed. It is recommended that you install the latest version of VirtualBox though, even if you previously installed it on your machine.

  * Download and install the latest version of Oracle [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

Done.

Well, not necessarily. In order use some virtual environments, you may need to do a little more than that. Some tools, like **Vagrant** create VMs that require you to be running with hardware-level virtualization enabled on your CPU. Depending on the architecture you use (_AMD_ vs. _Intel_) the flag will be different.

  1. Reboot your computer and enter the BIOS settings menu
  2. Look for either the setting `VT-x` (on Intel-based architectures) or `AMD-V` (on AMD-based architectures) and **enable** it.
  3. Save your BIOS changes and exit, restarting your computer.

Now you're done. For real.

Installing Vagrant
------------------
Vagrant, like VirtualBox, is pretty straight forward when it comes to installing it.

  * Download and install the latest version of [Vagrant](http://www.vagrantup.com/downloads.html)

Installing Git
--------------
Git is fast becoming one of the most popular source code management (SCM) systems on the internet. It is fast, distributed, and managing changes is remarkably easy. Installing Git is also fairly straight forward.

  1. Download and install [Git](http://git-scm.com) or [msysgit](http://msysgit.github.io) (for Windows)

> **NOTE:** For Windows, you may have already installed  [msysgit](http://msysgit.github.io) as part of your setup to support [TortoiseGit](https://code.google.com/p/tortoisegit/). If you have `mysysgit` installed, that should be sufficient, and you do not need to download and install `Git` separately.
