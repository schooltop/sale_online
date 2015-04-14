 <script type="text/javascript">
 function checkAll(n){
 if (n == 0) {
 	var chkStatus = document.getElementsByName("active[cad_contact_ids][]");
 	for (i = 0; i < chkStatus.length; i++) {
 		chkStatus[i].checked = event.srcElement.checked;
 	}
 }
 else if(n==1) {
 	var chkStatus1 = document.getElementsByName("active[stu_reg_inf_ids][]");
 	for (i = 0; i < chkStatus1.length; i++) {
 		chkStatus1[i].checked = event.srcElement.checked;
 	}
 }
	}
	
	
	function showEdbg(n){
	if (n<21)
	{
		document.getElementById('edbg_size').value=Number(document.getElementById('edbg_size').value)+1;
	}
	else
	{
		document.getElementById('edbg_size').value=1;
	}
    document.getElementById('edbg'+document.getElementById('edbg_size').value).style.display="block";
	
}

function destroyRemark(trid){
	var account_base = document.getElementById(trid);
    account_base.parentNode.removeChild(account_base);
}		

</script>