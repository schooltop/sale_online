	         
			function validate_required(field,alerttxt)
			{
			with (field)
			  {
			  if (value==null||value=="")
			    {alert(alerttxt);return false}
			  else {return true}
			  }
			}

			function validate_lead_apply_basic_info(thisform)
			{
			with (thisform)
			  {			  	 
			    if (validate_required(rcrm_lead_name,"姓名不能为空！！！")==false)
			    	{rcrm_lead_name.focus();return false}
			    if (validate_required(rcrm_lead_pinyin,"姓名拼音不能为空！！！")==false)
			    	{rcrm_lead_pinyin.focus();return false}
			    if (validate_required(rcrm_lead_citizenship,"请选择国籍！！！")==false)
			    	{rcrm_lead_citizenship.focus();return false}
			    if (validate_required(rcrm_lead_nation,"请填写籍贯！！！")==false)
			    	{rcrm_lead_nation.focus();return false}	
			    if (validate_required(rcrm_lead_certificateno,"身份证号码不能为空！！！")==false)
			    	{rcrm_lead_certificateno.focus();return false}
			    if (validate_required(rcrm_lead_mobilephone,"移动电话不能为空！！！")==false)
			       {rcrm_lead_mobilephone.focus();return false}
			    if (validate_required(rcrm_lead_work_address,"通讯地址不能为空！！！")==false)
			       {rcrm_lead_work_address.focus();return false}		    
			   }
			   			  
			    var certificate = document.getElementById('rcrm_lead_certificateno').value;
			    var mobilephone = document.getElementById('rcrm_lead_mobilephone').value;
			    var rcrm_lead_birth1 = document.getElementById('rcrm_lead_birth_1i').value;
			    var rcrm_lead_birth2 = document.getElementById('rcrm_lead_birth_2i').value;
			    var rcrm_lead_birth3 = document.getElementById('rcrm_lead_birth_3i').value;	
			   
				      if (certificate.substring(10,11)==0){
				    	var subcertificate1=certificate.substring(11,12);
				    	}
				      else{
				    	var subcertificate1=certificate.substring(10,12);	
				    	}
				      if (certificate.substring(12,13)==0){
				    	var subcertificate2=certificate.substring(13,14);
				    	}
				      else{
				    	var subcertificate2=certificate.substring(12,14);	
				    	}
				var subcertificate=certificate.substring(6,10)+subcertificate1+subcertificate2;
			    
			    if(mobilephone.length!=11){
			    	alert("手机号码应该是11位请确认！");return false
			    }
			    if(certificate.length!=18){
			    	alert("身份证号码应该是18位请确认！");return false
			    }
				if (rcrm_lead_birth1+rcrm_lead_birth2+rcrm_lead_birth3!=subcertificate) {
					alert(subcertificate);
					alert(subcertificate1);
					alert(subcertificate2);
					alert("身份证号码与生日日期不相符,请确认");return false
				           }
				           
			  
			}
			
			
			function validate_manual_lead(thisform)
			{
			with (thisform)
			  {
			    if (validate_required(rcrm_lead_name,"姓名不能为空！！！")==false)
			    	{rcrm_lead_name.focus();return false}
			    if (validate_required(rcrm_lead_certificateno,"身份证号码不能为空！！！")==false)
			    	{rcrm_lead_certificateno.focus();return false}
			    if (validate_required(rcrm_lead_email,"电子邮件不能为空！！！")==false)
			      {rcrm_lead_email.focus();return false}
			    if (validate_required(rcrm_lead_graduation_certificate_number,"毕业证号不能为空！！！")==false)
			      {rcrm_lead_graduation_certificate_number.focus();return false}
			   }
			}
			
			
			function validate_lead_apply_bgeducation(thisform)
			{
			with (thisform)
			  {
				if (document.getElementById("doctor").style.display != "none")
					{if (validate_required(rcrm_lead_doc_graduate_num,"博士证书编号不能为空！！！")==false)
				      {rcrm_lead_doc_graduate_num.focus();return false}
				    if (validate_required(doctor_school,"博士毕业院校不能为空！！！")==false)
				      {doctor_school.focus();return false}
				    if (validate_required(rcrm_lead_doc_professional,"博士专业类别不能为空！！！")==false)
				      {rcrm_lead_doc_professional.focus();return false}
				    if (validate_required(rcrm_lead_doc_style,"博士院校类别不能为空！！！")==false)
				      {rcrm_lead_doc_style.focus();return false}
					}
				if (document.getElementById("master").style.display != "none"&&document.getElementById("doctor").style.display == "none"){
				if (validate_required(rcrm_lead_master_graduate_num,"硕士证书编号不能为空！！！")==false)
			      {rcrm_lead_master_graduate_num.focus();return false}
			    if (validate_required(master_school,"硕士毕业院校不能为空！！！")==false)
			      {master_school.focus();return false}
				if (validate_required(rcrm_lead_master_professional,"硕士专业类别不能为空！！！")==false)
				   {rcrm_lead_master_professional.focus();return false}
				if (validate_required(rcrm_lead_master_style,"硕士院校类别不能为空！！！")==false)
				   {rcrm_lead_master_style.focus();return false}   
				   }

				if (document.getElementById("benke").style.display != "none" && document.getElementById("master").style.display == "none"){
			    if (validate_required(rcrm_lead_college_graduate_num,"本科证书编号不能为空！！！")==false)
			    	{rcrm_lead_college_graduate_num.focus();return false}
			    if (validate_required(ben,"本科院校不能为空！！！")==false)
			       {ben.focus();return false}
			    if (validate_required(benke_zhuan,"本科专业类别不能为空！！！")==false)
			      {benke_zhuan.focus();return false}
			    if (validate_required(legular_style,"本科院校类别不能为空！！！")==false)
			      {legular_style.focus();return false}  
			      }
				if (document.getElementById("benke").style.display == "none"&&document.getElementById("doctor").style.display == "none"&&document.getElementById("master").style.display == "none"&&document.getElementById("else_edu").style.display == "none"){
					if (validate_required(zhuan_num,"专科证书编号不能为空！！！")==false)
					    	{zhuan_num.focus();return false}
					if (validate_required(zhuan,"专科院校不能为空！！！")==false)
					       {zhuan.focus();return false}
					if (validate_required(zhuanke_zhuan,"专科专业类别不能为空！！！")==false)
					      {zhuanke_zhuan.focus();return false}
					if (validate_required(junior_style,"本科院校类别不能为空！！！")==false)
			              {junior_style.focus();return false}        
					      }
			   }
			if (document.getElementById("else_edu").style.display != "none" ){
			    if (validate_required(else_hightest_edu,"最高学历不能为空！！！")==false)
			    	{else_hightest_edu.focus();return false}}
			}
			
			
			function validate_lead_apply_bgwork(thisform)
			{
			with (thisform)
			  {   
			  	if (document.getElementById("pan")==null){
			  	 if (validate_required(company1,"工作履历单位不能为空！！！")==false)
			      {company1.focus();return false}
			      if (validate_required(position1,"工作履历职位不能为空！！！")==false)
			      {position1.focus();return false}	
			      if (validate_required(quale1_,"工作履工作性质不能为空！！！")==false)
			      {quale1_.focus();return false}	
			      if (validate_required(trade1_,"工作履工作行业不能为空！！！")==false)
			      {trade1_.focus();return false}	
			      if (validate_required(main1,"工作履证工作责任不能为空！！！")==false)
			      {main1.focus();return false}	
			      if (validate_required(contact1,"工作履证明人不能为空！！！")==false)
			      {contact1.focus();return false}
			      if (validate_required(conposition1,"工作履证明人职务不能为空！！！")==false)
			      {conposition1.focus();return false}
			      if (validate_required(contel1,"工作履证明人联系方式不能为空！！！")==false)
			      {contel1.focus();return false}	
			     }
			       	
				  if (validate_required(rcrm_lead_work,"公司名称不能为空！！！")==false)
			      {rcrm_lead_work.focus();return false}
			      if (validate_required(rcrm_lead_position,"现任职务不能为空！！！")==false)
			      {rcrm_lead_position.focus();return false}			      
			      if (validate_required(rcrm_lead_companytel,"公司电话不能为空！！！")==false)
			      {rcrm_lead_companytel.focus();return false}
			      if (validate_required(rcrm_lead_workexperien,"全职工作经验不能为空！！！")==false)
			      {rcrm_lead_workexperien.focus();return false}
			      if (validate_required(rcrm_lead_workyears,"管理岗位工作经验不能为空！！！")==false)
			      {rcrm_lead_workyears.focus();return false}
			      if (validate_required(rcrm_lead_income,"税前年收入不能为空！！！")==false)
			      {rcrm_lead_income.focus();return false} 			      
			      if (validate_required(rcrm_lead_mbaquale_id,"公司性质不能为空！！！")==false)
			      {rcrm_lead_mbaquale_id.focus();return false}
			      if (validate_required(rcrm_lead_mbatrade_id,"所属行业不能为空！！！")==false)
			      {rcrm_lead_mbatrade_id.focus();return false}
			  }
			}
			
			
			
			function validate_lead_apply_shortword(thisform)
			{
			with (thisform)
			  {
			    if (validate_required(desc6,"带×号的为必填！！！")==false)
			    	{desc6.focus();return false}
			    if (validate_required(desc7,"带×号的为必填！！！")==false)
			    	{desc7.focus();return false}
			    if (validate_required(desc8,"带×号的为必填！！！")==false)
			    	{desc8.focus();return false}
			   }
			}
			
			
			function validate_lead_apply_feed(thisform)
			{
			with (thisform)
			  {
			    if (validate_required(rcrm_lead_name,"姓名不能为空！！！")==false)
			    	{rcrm_lead_name.focus();return false}
			    if (validate_required(rcrm_lead_citizenship,"请选择国籍！！！")==false)
			    	{rcrm_lead_citizenship.focus();return false}
			    if (validate_required(rcrm_lead_certificateno,"身份证号码不能为空！！！")==false)
			    	{rcrm_lead_certificateno.focus();return false}
			    if (validate_required(rcrm_lead_email,"邮箱不能为空！！！")==false)
			      {rcrm_lead_email.focus();return false}
			   }
			}
			
		

function changecity(value)
{   
	jQuery.post("/rcrm_leads/get_cities",{code:value},function(result){
		    // if (result != undefined) alert(result);
		    var p_code=result.split("/")[1]+",";
	    	var city = result.split("/")[0].split(",");
	    	var options_html="";
	    	for(var i = 0;i<city.length-1;i++)
				  {
				 	options_html+="<option value="+p_code+city[i]+">"+city[i]+"</option>"
				 }
   			jQuery("#city").html(options_html);
   			jQuery("#area").html("<option value='其它'>其它</option>");
  });
	
}
function changearea(value)
{   
	jQuery.post("/rcrm_leads/get_areas",{code:value},function(result){
	    	var area = result.split(",");
	    	var a_options_html="";
	    	for(var i = 0;i<area.length-1;i++)
				  {
				 	a_options_html+="<option value="+area[i]+">"+area[i]+"</option>"
				 }
   			jQuery("#area").html(a_options_html);
  });
	
}

function cancel_xueli(idd){
	new Ajax.Updater('check_xueli_d'+idd.toString(), '/rcrm_leads/check_xueli?cancel=yes&id='+idd.toString(), 
			{asynchronous:true, 
				evalScripts:true, 
				onComplete:function(request){document.getElementById('spinner').style.display='none';}, 
				onLoading:function(request){
					document.getElementById('spinner').style.display='';
					document.getElementById('cancel_image'+idd.toString()).style.display='none';
					document.getElementById('check_image'+idd.toString()).style.display='';
					
					}
				}
			); }
function check_xueli(idd){
new Ajax.Updater('check_xueli_d'+idd.toString(), '/rcrm_leads/check_xueli?id='+idd.toString(), 
{asynchronous:true, 
	evalScripts:true, 
	onComplete:function(request){document.getElementById('spinner').style.display='none';}, 
	onLoading:function(request){document.getElementById('spinner').style.display='';
	document.getElementById('cancel_image'+idd.toString()).style.display='';
	document.getElementById('check_image'+idd.toString()).style.display='none';}
	}
); }

function cancel_youji(idd){
	new Ajax.Updater('check_youji_d'+idd.toString(), '/service_styles/check_youji?cancel=yes&id='+idd.toString(), 
			{asynchronous:true, 
				evalScripts:true, 
				onComplete:function(request){document.getElementById('spinner').style.display='none';}, 
				onLoading:function(request){
					document.getElementById('spinner').style.display='';
					document.getElementById('cancel_image_youji'+idd.toString()).style.display='none';
					document.getElementById('check_image_youji'+idd.toString()).style.display='';
					}
				}
			); }
function cancel_youji(idd){
	new Ajax.Updater('check_youji_d'+idd.toString(), '/service_styles/check_youji?cancel=yes&id='+idd.toString(), 
			{asynchronous:true, 
				evalScripts:true, 		
				onLoading:function(request){
					document.getElementById('cancel_image_youji'+idd.toString()).style.display='none';
					document.getElementById('check_image_youji'+idd.toString()).style.display='';
					}
				}
			); }
function check_youji(idd){
new Ajax.Updater('check_youji_d'+idd.toString(), '/service_styles/check_youji?id='+idd.toString(), 
{asynchronous:true, 
	evalScripts:true, 
	onLoading:function(request){
	document.getElementById('cancel_image_youji'+idd.toString()).style.display='';
	document.getElementById('check_image_youji'+idd.toString()).style.display='none';}
	}
); 
}
 