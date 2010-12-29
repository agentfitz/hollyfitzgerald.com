<style>
.signupframe {
  border: 1px solid #2b3c6a;
  background-color: #EAF4FF;
  color: #2b3c6a;
  font: 9pt/22px Verdana, Arial, Helvetica, sans-serif;
	padding: 10px;
}
.welcomePara {
  font: 9pt/22px Verdana, Arial, Helvetica, sans-serif;
}
</style>
<form method="post" action="http://app.icontact.com/icp/signup.php" name="icpsignup" accept-charset="UTF-8" onsubmit="return verifyRequired();" >
<input type="hidden" name="redirect" value="http://www.hollyfitzgerald.com/newsletterSuccess.cfm" />
<input type="hidden" name="errorredirect" value="http://www.hollyfitzgerald.com/newsletterError.cfm" />
<script type="text/javascript">
 function verifyRequired()
 {
  if(document.icpsignup["fields_email"].value == "")
	{
    document.icpsignup["fields_email"].focus();
    alert("The Email field is required.");
    return false;
  }
  return true;
 }
</script>
<div id="SignUp">
 <table class="signupframe" border="0" cellspacing="0" cellpadding="5">
  <tr>
	 <td class="welcomePara" colspan="2"><strong>Welcome</strong><br />Join Holly's occasional newsletter for tips, personal stories, and practical solutions to living a mentally healthy life.</td>
	</tr>
	<tr>
   <td>
		<input type="text" name="fields_fname" value="First Name" /> <input type="text" name="fields_email" value="Email" /> <input type="submit" name="Submit" value="Submit" /></td>
  </tr>
 </table>
</div>
<input type="hidden" name="listid" value="57587" />
<input type="hidden" name="specialid:57587" value="2VW6" />
<input type="hidden" name="clientid" value="261574" />
<input type="hidden" name="formid" value="4380" />
<input type="hidden" name="reallistid" value="1" />
<input type="hidden" name="doubleopt" value="0" />
</form>