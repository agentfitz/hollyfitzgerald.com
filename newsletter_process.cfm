<cfparam name="FirstName" default="">
<cfparam name="LastName" default="">
<cfparam name="Email" default="">
<cfparam name="How" default="">
<cfparam name="AdditionalComments" default="">

<cfset strError="">

<cfif IsDefined("FORM.SubmitButton")>
  <cfif Len(Trim(FORM.FirstName))LT 1>
   <cfset strError = strError & "Your first name is required<br/>">
  </cfif>
  <cfif Len(Trim(FORM.Email))LT 1>
   <cfset strError = strError & "Your email is required<br/>">
  </cfif>
  <cfif Len(Trim(FORM.How))LT 1>
   <cfset strError = strError & "How you heard about us is required<br/>">
  </cfif>
 <cfelse>
  <cflocation addtoken="no" url="newsletter.cfm">
</cfif>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="keywords" content="holly, fitzgerald, mediation, mental health, north carolina, chapel hill, lcsw, depression, addiction, couples, aged, children, holistic, LCSW, licensed, anxiety, relationship, meditation, relaxation, therapy, psychotherapy, psychotherapist, chapel hill, nc, orange, durham, duke, carrboro, county" />
<meta name="description" content="Holly FitzGerald has been in private practice as a Clinical Social Worker in Chapel Hill since 1989, and worked with various social service agencies since 1971. She has worked with, and continues to work with a broad range of populations, from children to the elderly." />

<title>Chapel Hill Therapy, Depression Addictions Anxiety Treatment | Holly FitzGerald, LCSW Psychotherapy | Chapel Hill, NC 27514</title>
<link rel="stylesheet" href="hollystyle.css" type="text/css" />

</head>

<cfinclude template="mainnav.cfm" />

 <div id="textmain">
  <h1>Chapel Hill Therapy Newsletter</h1>
 <cfif strError EQ"">
  <p>Thank you for requesting the "Mentally Healthy Living" newsletter.  I hope you find it's information valuable.</p>
  <p>You submitted the following information:</p>
  <cfoutput>
   <p> <strong>First Name:</strong>#Trim(FORM.FirstName)#<br />
    <strong>Last Name:</strong>#Trim(FORM.LastName)#<br />
    <strong>Email:</strong>#Trim(FORM.Email)#<br />
    <strong>How you heard about us:</strong>#Trim(FORM.How)#<br />
    <strong>Additional Comments:</strong>#Trim(FORM.AdditionalComments)#<br />
   </p>
  </cfoutput>
  <cfmail from="#FORM.Email#" to="hf@mindspring.com" cc="bmfitzgerald3@yahoo.com" subject="Holly Newsletter Sign-up" type="html">
   <p>Your Web site visitor <cfoutput>#FORM.FirstName# #FORM.LastName#</cfoutput> wants to join the newsletter!</p>Here is the information he/she submitted:<br />
   <p> <strong>First Name:</strong> #Trim(FORM.FirstName)#<br />
    <strong>Last Name:</strong> #Trim(FORM.LastName)#<br />
    <strong>Email:</strong> #Trim(FORM.Email)#<br />
    <strong>How you heard about us:</strong> #Trim(FORM.How)#<br />
    <strong>Additional Comments:</strong> #Trim(FORM.AdditionalComments)#<br />
   </p>
  </cfmail>
 <cfelse>
 <p>
  "Mentally Healthy Living" is a newsletter series I provide to offer you coping techniques and strategies, all with some bits of wisdom to live by, and some humor added in for good measure.</p>
  <p>The newsletter is sent out once per quarter via email, and you can unsubscribe at any time. Please note that fields marked with an askterisk(*) below are required fields.
  </p>
  <cfoutput><span class="error">#strError#</span></cfoutput>
  <span class="formtext">
  <cfform action="newsletter_process.cfm" method="post">
   First Name*<br />
   <cfinput 
    type="text" 
    size="54" 
    maxlength="30" 
    class="formtext" 
    name="FirstName" 
    value="#FORM.FirstName#"/><br />
   
   Last Name<br />
   <cfinput 
    type="text" 
    size="54" 
    maxlength="30" 
    class="formtext" 
    name="LastName"
    value="#FORM.LastName#" /><br />
   
   Email*<br />
   <cfinput 
    type="text" 
    size="54" 
    maxlength="30" 
    class="formtext" 
    name="Email"
    value="#FORM.Email#" /><br />
   
   How did you hear about us?*<br />
   <cfinput 
    type="text" 
    size="54" 
    maxlength="30" 
    class="formtext" 
    name="How"
    value="#FORM.How#" /><br />
   
   Additional Comments<br />
   <textarea 
    type="text" 
    cols="40"
    rows="7"
    maxlength="400" 
    class="formtext" 
    name="AdditionalComments"
    value="#FORM.AdditionalComments#"><cfoutput>#FORM.AdditionalComments#</cfoutput></textarea>
   <br /><br />
   <cfinput 
    type="submit" 
    value="submit"
    name="SubmitButton" />
  </cfform>
  </span> 
 </cfif> 
 </div>
<cfinclude template="rightnav.cfm" />
<cfinclude template="footer.cfm" />