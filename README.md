bbb-aloks
=============
BigBlueButton is an open source web conferencing system for on-line learning.  

We believe that every student with a web browser should have access to a high-quality on-line learning experience.  We intend to make that possible with BigBlueButton. 

BigBlueButton supports real-time sharing of slides (PDF and any document readable by LibreOffice), webcams, whiteboard, chat, voice over IP (using FreeSWITCH), and desktop.  It can record and playback all content shared in a session.  The use cases for BigBlueButton are

  * One-to-one on-line tutoring
  * Small group collaboration 
  * On-line classes (50 or less)

BigBlueButton is built on the [shoulders of giants] (http://www.bigbluebutton.org/components/).

Getting Started
===============
Instruktioner kommer...

Om hostname/ip ändras behöver du köra. Update config.xml (replace the OLDHOST and NEWHOST with old/new hostname/ip address):

$ sed -i s/OLDHOST/NEWHOST/g bigbluebutton-client/src/conf/config.xmlJamais vu

bigbluebutton-web instruktioner: https://code.google.com/p/bigbluebutton/wiki/090Developing#Developing_BBB-Web

Uppdatera serverUrl och salt i bigbluebutton-web/grails-app/conf för att matcha din miljö.

Changing stuff
==============

Production:
-----------
To change the default language change the file `/var/www/bigbluebutton/client/lib/bbb_localization.js` set `localeChain` to the desierd language code
Note that you might need a compiled language file from the develop server!


Changing the header:
--------------------
If we use the installation for 1.0rc+ changing the header is done in: `/var/www/bigbluebutton/client/BigBlueButton.html`

Changing the footer:
--------------------
File: MainApplicationShell.mxml .

Location: bigbluebutton-client/src/org/bigbluebutton/main/views/ .

Line: ~670 with the text "\<mx:ControlBar width="100%" height="{footerHeight}" paddingTop="0" id="controlBar"\>"

HowTo: Change the htmlText atribute where the "id" atribute is "copyrightLabel2".

Alternative method
------------------
Alternative you can edit the translation for this line.

Find the line containing "bbb.mainshell.copyrightLabel2" in bbbResources.properties .

in the location bigbluebutton-client/locale/\<language_code\> .

Changing the welcome text
-------------------------
File: bigbluebutton.properties .

Location: /var/lib/tomcat7/webapps/bigbluebutton/WEB-INF/classes/ .

Line: Find the line containing "defaultWelcomeMessage" and/or "defaultWelcomeMessageFooter".

HowTo: Change those lines to the appropiate message.

Note: This is change is not done in the dev-enviroment.

Changing the logout url
-----------------------
File:  bigbluebutton.properties .

Location: /var/lib/tomcat7/webapps/bigbluebutton/WEB-INF/classes/ .

Line: Find the line containing "bigbluebutton.web.logoutURL"

HowTo: Change the variable to the desierd URL


License
=======
  

For more information on the latest release -- including installation instructions, demo server, API, and overview of architecture -- see [http://docs.bigbluebutton.org/](http://docs.bigbluebutton.org/).

BigBlueButton and the BigBlueButton Logo are trademarks of [BigBlueButton Inc] (http://bigbluebutton.org) .
