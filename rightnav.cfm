<div id="rightnav">
  <ul>
   <li><img src="images/extras.gif" alt="Find the site's 'Extra Content' links below"/></li>
   <li><a href="http://hollyfitzgerald.blogspot.com" target="_blank"><img src="images/blog.gif" border="0" alt="Step's to Serenity - Holly's Blog"/></a></li>
   <li><a href="professional_opinions.cfm"><img src="images/professional_opinions.gif" border="0" alt="Professional opinions about Holly"/></a></li>
   <li><a href="directions.cfm"><img src="images/directions.gif" border="0" alt="Get directions to Holly's office"></a></li>
  </ul>

 <p>
 <cfset dCurrent = Now() /> 
 <cfoutput>
  <span class="date">#DateFormat(dCurrent, "full")#</span><br />
  <span class="rightnavtext">Please don't forget to:</span>
  <br />
  <a href="contact.cfm" class="rightnavlink">Contact Holly</a>
  <br />
  <!--- <a href="newsletter.cfm" class="rightnavlink">Join the Newsletter</a><br /> --->
  <span class="rightnavtext"><a href="mailto:bmfitzgerald3@yahoo.com" class="rightnavlink">Report problems</a> to the webmaster</span>
 </cfoutput>
 </p>
</div>