---
layout: post
status: publish
published: true
title: MIME types and library metadata
author:
  display_name: ed
  login: ed
  email: ehs@pobox.com
  url: http://www.inkdroid.org
author_login: ed
author_email: ehs@pobox.com
author_url: http://www.inkdroid.org
wordpress_id: 195
wordpress_url: http://inkdroid.org/journal/?p=195
date: '2008-04-23 07:46:24 +0000'
date_gmt: '2008-04-23 14:46:24 +0000'
tags:
- http
- marc
- web
- xml
- mods
- mime
- conneg
- rest
comments:
- id: 60223
  author: Kevin S. Clarke
  author_email: ksclarke@gmail.com
  author_url: ''
  date: '2008-04-23 07:54:12 +0000'
  date_gmt: '2008-04-23 14:54:12 +0000'
  content: This is a great idea, I think.
---
<p>While thinking about library metadata and <a href="http://en.wikipedia.org/wiki/Representational_State_Transfer">RESTful web services</a> I got to wondering how many application/<em>+xml <a href="http://www.iana.org/assignments/media-types/application/">MIME types</a> have actually been registered. It <a href="http://web.archive.org/web/20101216203407/http://inkdroid.org/bzr/bin/xml_mimes">turns out</a> that 120 out of the 633 other application/</em> MIME types.</p>
<p>Does it seem like a generally useful thing to be able to identify metadata representations with MIME types? Rebecca Guenther registered <a href="http://www.rfc-editor.org/rfc/rfc2220.txt">application/marc</a> back in 1997. Maybe we could have application/marc+xml, application/mods+xml, application/dc+xml?</p>
<p>MIME types for established library metadata formats would be useful to use in applications like <a href="http://www.ietf.org/rfc/rfc5023.txt">AtomPub</a> implementations, or say <a href="http://www.openarchives.org/ore/">OAI-ORE</a> resource maps that want to identify the format of a particular resource. In general it would be useful to have in RESTful environments where content-negotiation for resources is encouraged.</p>
<p>If you are curious, here is a current (as of Apr 23, 2008) list of registered MIME types that are in the application/*+xml space.</p>
<pre>
application/atom+xml
application/atomcat+xml
application/atomsvc+xml
application/auth-policy+xml
application/beep+xml
application/ccxml+xml
application/cellml+xml
application/cnrp+xml
application/conference-info+xml
application/cpl+xml
application/csta+xml
application/CSTAdata+xml
application/davmount+xml
application/dialog-info+xml
application/epp+xml
application/im-iscomposing+xml
application/kpml-request+xml
application/kpml-response+xml
application/mbms-associated-procedure-description+xml
application/mbms-deregister+xml
application/mbms-envelope+xml
application/mbms-msk-response+xml
application/mbms-msk+xml
application/mbms-protection-description+xml
application/mbms-reception-report+xml
application/mbms-register-response+xml
application/mbms-register+xml
application/mbms-user-service-description+xml
application/media_control+xml
application/mediaservercontrol+xml
application/oebps-package+xml
application/pidf+xml
application/pls+xml
application/poc-settings+xml
application/rdf+xml
application/reginfo+xml
application/resource-lists+xml
application/rlmi+xml
application/rls-services+xml
application/samlassertion+xml
application/samlmetadata+xml
application/sbml+xml
application/shf+xml
application/simple-filter+xml
application/smil+xml
application/soap+xml
application/sparql-results+xml
application/spirits-event+xml
application/srgs+xml
application/ssml+xml
application/vnd.3gpp.bsf+xml
application/vnd.3gpp2.bcmcsinfo+xml
application/vnd.adobe.xdp+xml
application/vnd.apple.installer+xml
application/vnd.avistar+xml
application/vnd.chemdraw+xml
application/vnd.criticaltools.wbs+xml
application/vnd.ctct.ws+xml
application/vnd.eszigno3+xml
application/vnd.google-earth.kml+xml
application/vnd.HandHeld-Entertainment+xml
application/vnd.informedcontrol.rms+xml
application/vnd.irepository.package+xml
application/vnd.liberty-request+xml
application/vnd.llamagraphics.life-balance.exchange+xml
application/vnd.marlin.drm.actiontoken+xml
application/vnd.marlin.drm.conftoken+xml
application/vnd.mozilla.xul+xml
application/vnd.ms-playready.initiator+xml
application/vnd.nokia.conml+xml
application/vnd.nokia.iptv.config+xml
application/vnd.nokia.landmark+xml
application/vnd.nokia.landmarkcollection+xml
application/vnd.nokia.n-gage.ac+xml
application/vnd.nokia.pcd+xml
application/vnd.oma.bcast.associated-procedure-parameter+xml
application/vnd.oma.bcast.drm-trigger+xml
application/vnd.oma.bcast.imd+xml
application/vnd.oma.bcast.notification+xml
application/vnd.oma.bcast.sgdd+xml
application/vnd.oma.bcast.smartcard-trigger+xml
application/vnd.oma.bcast.sprov+xml
application/vnd.oma.dd2+xml
application/vnd.oma.drm.risd+xml
application/vnd.oma.group-usage-list+xml
application/vnd.oma.poc.detailed-progress-report+xml
application/vnd.oma.poc.final-report+xml
application/vnd.oma.poc.groups+xml
application/vnd.oma.poc.invocation-descriptor+xml
application/vnd.oma.poc.optimized-progress-report+xml
application/vnd.oma.xcap-directory+xml
application/vnd.omads-email+xml
application/vnd.omads-file+xml
application/vnd.omads-folder+xml
application/vnd.otps.ct-kip+xml
application/vnd.poc.group-advertisement+xml
application/vnd.pwg-xhtml-print+xml
application/vnd.recordare.musicxml+xml
application/vnd.solent.sdkm+xml
application/vnd.sun.wadl+xml
application/vnd.syncml.dm+xml
application/vnd.syncml+xml
application/vnd.uoml+xml
application/vnd.wv.csp+xml
application/vnd.wv.ssp+xml
application/vnd.zzazz.deck+xml
application/voicexml+xml
application/watcherinfo+xml
application/wsdl+xml
application/wspolicy+xml
application/xcap-att+xml
application/xcap-caps+xml
application/xcap-el+xml
application/xcap-error+xml
application/xcap-ns+xml
application/xenc+xml
application/xhtml+xml
application/xmpp+xml
application/xop+xml
application/xv+xml
</pre>
