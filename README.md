RG Manager
===========

What is this Project?
---------------------
This open source project is to help manage [Rails Girls](http://railsgirls.com/) events, including application forms, participant selection and event information.  

Why are you doing this?
-----------------------
Since Rails Girls workshops are all about getting excited and making things, we decided to make something useful for us that could be contributed to by other Rails Girls and Rails Girls enthusiasts.

Background:
-----------
>In 2012, we held two Rails Girls workshops in Washington, DC (USA) and in organizing those events, we realized that we could build an app to make the participant selection process easier than the spreadsheet and manual process we were using. We wanted help to keep track of applications, and guide the process of scoring them, keeping track of who shows up - a back-office system.
>
>Then we realized it would be awesome to have a social network to connect all of the Rails Girls people (participants, coaches, sponsors, volunteers) before and after the event, as well as resources and opportunities/deals to continue their education.

Start Contributing:
====================
How do I get the app working on my machine?
-------------------------------------------
###GitHub Help
1. If you are brand new to GitHub work through [try.github.com](try.github.com)
2. Fork the repo from Tapangi/rgmanager.  This will copy the application from user "Tapangi" to your GitHub account.  
3. Clone the applicatino from YOUR Github/rgmanager location to your machine [instructions](https://help.github.com/articles/fork-a-repo).  The reason you work from your account and on your machine is so that changes you make are only committed to the main repository once you're satisfied with the results.
4. Create an UpStream from the main repo (Tapangi) this will allow you to pull in any changes that occur on the main repository as your working on your project.
    - to do this, in your terminal run
    - ```remote add upstream https://github.com/tapangi/rgmanager.git```

###Running the application on your computer
1. Once you have forked and cloned the application onto your computer you need to set up the Postgres database
2. For MACS: 
    - Go to [postgresapp.com](http://postgresapp.com/) and download the app.
For Windows:
    - Go to [EnterpriseDB](http://www.enterprisedb.com/products-services-training/pgdownload#windows) and download the correct app.
3. Once installed go to your terminal and run ``` psql -h localhost``` you should see something like this: 
    ```
    psql (9.2.2)
    Type "help" for help.

    Computer_Name=# 
    ```
    - This means you're in the Postgres shell and can run commands to create databases.
4. Run these commands to create your databases:
    ```
    createuser rgmanager
    createdb -Orgmanager -Eutf8 rgmanager_development
    createdb -Orgmanager -Eutf8 rgmanager_test
    ```
    - leave this terminal window open and open a new one (apple key + t) this should bring up a terminal window that is still located in the rgmanager directory. Run '''ruby rake db:migrate'''
5. Congrats you're databases are ready to go! You can now run ```ruby rails s``` in same same terminal window you just ran the rake commend.  You should see something like this:
```
WARNING: Nokogiri was built against LibXML version 2.7.3, but has dynamically loaded 2.7.8
=> Booting WEBrick
=> Rails 3.2.11 application starting in development on http://0.0.0.0:3000
=> Call with -d to detach
=> Ctrl-C to shutdown server
[2013-02-25 15:00:22] INFO  WEBrick 1.3.1
[2013-02-25 15:00:22] INFO  ruby 1.9.3 (2012-11-10) [x86_64-darwin12.2.1]
[2013-02-25 15:00:22] INFO  WEBrick::HTTPServer#start: pid=00000 port=3000
```
6.  In your browser type in "localhost:3000" and the app should appear!

How do I know what issues to work on with the app?
--------------------------------------------------
We've done the hard part for you and prioritized issues that need attention.  All the featuers that need to be built are listed in our [feature tracker page](https://www.pivotaltracker.com/projects/700251/).

We will not list any issues in the feature tracker page that do not need immediate attention, so feel free to tackle any of the issues!

###How will I know and other people know what issues are being worked on?
We hope to have a lot of different people contributing to RGManager, however, this could cause some confusion as not everyone will know if someone is already working on the issue they want to tackle.

For now we're keeping track of issues and who is working on them via the [RGManager Github Issue Page](https://github.com/tapangi/rgmanager/issues?state=open).

If there is a feature you want to work on listed in the feature tracker page see if the issue is listed on our [RGManager Github Issue Page](https://github.com/tapangi/rgmanager/issues?state=open).  If so, read the comments for the issue and if you think you can work on the issue leave a comment with what you're planning to contribute then start working. If you want to work on a feature that is not yet listed on the [RGManager Github Issue Page](https://github.com/tapangi/rgmanager/issues?state=open) you can create the issue.

When creating issues in RGManager GitHub try to be a descriptive as possible as to what you want to do and what the outcome should be so others can understand and follow along.

When you have settled on what issue you're going to work on from the RGManager GitHub issue page you can follow these steps:
- Go to your account page for RGManager and create a new branch.  The new branch should be the same as the issue number you want to work on ie: Issue_19, Issue_30 etc. 
<div style="float:left;margin:0 10px 10px 0" markdown="1">
![Creating a branch](/app/assets/images/create_branch.jpg)</div>
- Work on the app on your local machine from the branch you just created.
- When you're satisfied with your work push the code from your machine on the Issue# branch to your *account/rgmanager master branch*
- If you're still satisfied with everything you can submit a pull-request from your *account/rgmanager master branch* to *tapangi/rgmanager master*

###Proposing an idea/feature
>For now we ask that you email us at railsgirlsdc@gmail.com and include "RG Manager: idea" in the subject.  We'll send you a confirmation email that we've received your idea and let you know when it's posted to the feature tracker page.


Other Important Information for RG Manager:
===========================================
###Application User Roles:
-  Applicant
-  Participant (applicant, selected and attended)
-  Organizer
-  Coach (applicant, invited and coached)
-  Sponsor (offered and committed)
-  Volunteer (including Speakers)
-  Network Member (can be any other user role and network member, or just network member)

###Networks and Events:
Networks - help build local communities and provide greater visibility into other communities, we thought of introducing a concept of a Network. A network is essentially a group of people in a particular city that is associated with Rails Girls events. 

Events - localized, physical workshops, are organized by people that belong to a Network (ie. Washington, DC). Users/members of the Rails Girls community could belong to multiple networks, not just one. They could be members of a network or admins/organizers, which among other things would allow them to create and schedule Events. 

Thanks
=======
Thanks for contributing to this open source project and helping make Rails Girls awesome!  

Contact
========
If you have questions about RG Manager or Rails Girls shoot us an email at railsgirlsdc@gmail.com or catch us on Twitter @RailsGirlsDC

You can also come to our meetups and contribute in person: [Rails Girls DC Meetup Info](http://www.meetup.com/Rails-Girls/Washington-DC/)
