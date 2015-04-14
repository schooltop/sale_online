
function destroyRemark(trid){
	var account_base = document.getElementById(trid);
    account_base.parentNode.removeChild(account_base);
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

function showWork(n){
	if (n<21)
	{
		document.getElementById('work_size').value=Number(document.getElementById('work_size').value)+1;
	}
	else
	{
		document.getElementById('work_size').value=1;
	}
    document.getElementById('work'+document.getElementById('work_size').value).style.display="block";
	
}



function showPractice(n){
	if (n<21)
	{
		document.getElementById('practice_size').value=Number(document.getElementById('practice_size').value)+1;
	}
	else
	{
		document.getElementById('practice_size').value=1;
	}
    document.getElementById('practice'+document.getElementById('practice_size').value).style.display="block";
	
}

function showTrain(n){
	if (n<21)
	{
		document.getElementById('train_size').value=Number(document.getElementById('train_size').value)+1;
	}
	else
	{
		document.getElementById('train_size').value=1;
	}
    document.getElementById('train'+document.getElementById('train_size').value).style.display="block";
	
}

function showElse(n){
	if (n<21)
	{
		document.getElementById('else_size').value=Number(document.getElementById('else_size').value)+1;
	}
	else
	{
		document.getElementById('train_size').value=1;
	}
    document.getElementById('else'+document.getElementById('else_size').value).style.display="block";
	
}





















