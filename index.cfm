<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="keywords" content="holly, fitzgerald, counselor, social work, premarital, marital, depression, anxiety, therapist, orange county, addictions" />
<meta name="description" content="Holly FitzGerald has been in private practice as a Clinical Social Worker in Chapel Hill since 1989, and worked with various social service agencies since 1971. She has worked with, and continues to work with a broad range of populations, from children to the elderly." />
<title>Chapel Hill Therapy | Depression, Anxiety, Addictions Treatment - Holly FitzGerald, LCSW Social Work | Chapel Hill, NC 27514</title>
<link rel="stylesheet" href="hollystyle.css" type="text/css" />
<link rel="stylesheet" href="styles/ui-lightness/jquery-ui-1.7.2.custom.css" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="script/jquery-ui-1.7.2.custom.min.js"></script>
<script>
$(function(){
	
	$("#textMain").fadeIn("slow");
	$("#accordion").accordion( {collapsible: true, active: false } );
	
});
</script>
<style>

a.entryTitle {  }

</style>

</head>

<cfset feedUrl = "http://hollyfitzgerald.blogspot.com/feeds/posts/default" />
<cfinvoke component="RssService" method="getEntries" returnvariable="qEntries">
 <cfinvokeargument name="xmlData" value="#feedUrl#" />
</cfinvoke>


<body id="home">
<cfoutput>
<cfinclude template="mainnav.cfm" />

 

 <div id="textmain">
 <h1>How can I help you?</h1>
 <p>
  My goal is to help you address your issues that you feel are standing in the way of your leading a more fulfilling life.  Below you will find excerpts from my Blog "Steps to Serenity - Tips from a Therapist,"
  which offers a collection of thoughts I have gained from helping patients improve their lives for over 25 years.
  Is there a particular topic you would like to see addressed?  I invite you to read the entries and share your thoughts in the comments, or <a href="contact.cfm">contact me</a> directly for a getting to know each other session.
 </p>
 
 <br />
 
 <div id="accordion">
  <cfloop query="qEntries">
  
  
  <h3>#qEntries.title#</h3>
  <div>
   <p>#formatEntry(qEntries.description)# ... </p>
   <a href="#qEntries.link#" style="padding-bottom: 25px;" target="_blank">read more</a>
  </div>
  
  </cfloop>
 </div>
 
</div>
</cfoutput>
<cfinclude template="rightnav.cfm" />
<cfinclude template="footer.cfm" />


<cffunction name="formatEntry" returntype="string">
 <cfargument name="entry" type="string" required="true" />
 
 <cfset arguments.entry = reReplaceNoCase(arguments.entry, "<(/)?(a|img|div|script|object)(.)*?>", "", "all") />
 <cfset arguments.entry = reReplaceNoCase(arguments.entry, "(<br />|<br>){3,}", "", "all") />
 
 <cfreturn left(arguments.entry, 450) />
</cffunction>







