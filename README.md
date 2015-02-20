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

License
=======
BigBlueButton is licensed under the LGPL 3.0.

BigBlueButton and the BigBlueButton Logo are trademarks of [BigBlueButton Inc] (http://bigbluebutton.org) .
