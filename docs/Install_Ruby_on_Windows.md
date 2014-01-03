Installing Ruby on Windows
==========================

1. Download the Windows [Ruby Installer](http://rubyinstaller.org/) package and run the installer. (e.g. `C:\Ruby\Ruby200`)

    > **NOTE:** It is very important to be mindful of which version of Ruby you are downloading and installing; `Ruby 2.x` is the correct version, but make sure you download the 32-bit tools. Otherwise you will find that many gems, even if they are 2.x compliant, will not compile!  
2. Download the [DevKit Add-On](http://rubyinstaller.org/add-ons/devkit/) for Windows that matches the version of Ruby you downloaded above.
3. Extract the `DevKit` to a permanent directory (e.g. `C:\Ruby\DevKit-4.7.2`)
4. Open a command prompt and execute the following command:

    `$ ruby dk.rb init`

5. Edit the `config.yml` (if necessary) that is generated to point to your Ruby installation, e.g.

    <pre>
    ---
    - C:/Ruby/Ruby200
    </pre>
 
6. Install the DevKit by running the following command:

    `$ ruby dk.rb install`

Install Common Ruby Gems
------------------------
Once you have Ruby installed, you should install common Ruby gems that you will need during any sort of development you do on Windows involving Ruby. The following command should install the gems you will need:

    $ gem install sys-admin \
        win32-dir \
        win32-process \
        win32-security \
        win32-service \
        win32-taskscheduler \
        windows-api \
        windows-pr \
        ruby-wmi \
        nokogiri

