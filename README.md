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

Initial Proposed RG Manager Features/Components:
================================================
Below you will find proposed features.  To **keep order** to this open source project we've done the hard part for you and **prioritized the features** so you know which ones have **immediate importance** to work on.

###Visit our [feature tracker page](https://www.pivotaltracker.com/projects/700251/) to view all the project's priorities and the wireframes/sketches we have to go along with those priorities.  

Below are our top 4 priorities at the moment(*remember to visit the feature tracker page for wireframes/sketches before starting*):
 1. Homepage layout with correct root URL 
 2. Sitemap
 3. Event Detail Form (for hosting a Rails Girls Workshop Event)
 4. Log-in Authentication and User Sign-up Form

We have big plans for RG Manager.  To view all the proposed future features we'll again direct you to our [feature tracker page](https://www.pivotaltracker.com/projects/700251/).  This way you can get a feel for the future of RG Manager.

###Proposing an idea/feature
>For now we ask that you email us at railsgirlsdc@gmail.com and include "RG Manager: idea" in the subject.  We'll send you a confirmation email that we've received your idea and let you know when it's posted to the feature tracker page.

###Managing issues/bugs/feature work
>If you find a bug or issue, or if you're working on a feature please submit an "issue" for it on the [main GitHub repo page](https://github.com/tapangi/rgmanager/issues?state=open)
>
>Please use cucumber formatting for issues if possible.  You can also include a skill level for the issue if you like (easy, intermediate, advanced)

Other Important Information for RG Manager:
-------------------------------------------
###This project uses Postgres
- You should download Postgres if you don't have it already [postgressapp.com](postgressapp.com)
- You need to create the following databases within the PSQL shell:
    - createdb -Orgmanager -Eutf8 rgmanager_development
- Next run 'rake db:migrate db:seed'

###Fork then Clone Repo
- Please remember to fork the repo first onto your GitHub account, then clone from your GitHub account onto your computer, do not clone directly from the master.
- Remember, before you start working on the app, update your version of the repo if changes have been made to the master  
- Remember to submit a pull request if you have changes you would like to push to the master

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
![Rails Girls DC Image](/app/assets/images/railsgirlsdcimage.jpg)

You can also come to our meetups and contribute in person: [Rails Girls DC Meetup Info](http://www.meetup.com/Rails-Girls/Washington-DC/)
