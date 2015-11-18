bbb-aloks
=============
BigBlueButton is an open source web conferencing system for on-line learning.  We believe that every student with a web browser should have access to a high-quality on-line learning experience.  We intend to make that possible with BigBlueButton. 

BigBlueButton supports real-time sharing of slides (PDF and any document readable by OpenOffice), webcams, whiteboard, chat, voice over IP (using FreeSWITCH), and desktop. It can record and playback all content shared in a session.  The BigBlueButton project is is supported by a [community of developers] (http://www.bigbluebutton.org/support/) that care about good design and a streamlined user experience. 

The use cases for BigBlueButton are
  * One-to-one on-line tutoring
  * Small group collaboration 
  * On-line classes (25 or less)

BigBlueButton is built on the [shoulders of giants] (http://www.bigbluebutton.org/components/).

Getting Started
===============
Instruktioner kommer...

Om hostname/ip ändras behöver du köra. Update config.xml (replace the OLDHOST and NEWHOST with old/new hostname/ip address):

$ sed -i s/OLDHOST/NEWHOST/g bigbluebutton-client/src/conf/config.xml

bigbluebutton-web instruktioner: https://code.google.com/p/bigbluebutton/wiki/090Developing#Developing_BBB-Web

Uppdatera serverUrl och salt i bigbluebutton-web/grails-app/conf för att matcha din miljö.

Changing stuff
==============

Changing the footer:
--------------------
File: MainApplicationShell.mxml
Location: bigbluebutton-client/src/org/bigbluebutton/main/views/
Line: ~670 with the text '<mx:ControlBar width="100%" height="{footerHeight}" paddingTop="0" id="controlBar">'
HowTo: Change the htmlText atribute where the "id" atribute is "copyrightLabel2"

Alternative method
------------------
Alternative you can edit the translation for this line
Find the line containing "bbb.mainshell.copyrightLabel2" in bbbResources.properties
in the location bigbluebutton-client/locale/<language_code>

Changing the welcome text
-------------------------
File: bigbluebutton.properties
Location: /var/lib/tomcat7/webapps/bigbluebutton/WEB-INF/classes/bigbluebutton.properties
Line: Find the line containing "defaultWelcomeMessage" and/or "defaultWelcomeMessageFooter"
HowTo: Change those lines to the appropiate message.
Note: This is change is not done in the dev-enviroment.

License
=======
BigBlueButton is licensed under the LGPL 3.0.

BigBlueButton and the BigBlueButton Logo are trademarks of [BigBlueButton Inc] (http://bigbluebutton.org) .
