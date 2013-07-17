<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
var xmlhttp;

function loadXMLDoc(url,cfunc)
{
	if (window.XMLHttpRequest)
	  {// code for IE7+, Firefox, Chrome, Opera, Safari
	  xmlhttp=new XMLHttpRequest();
	  }
	else
	  {// code for IE6, IE5
	  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	  }
xmlhttp.onreadystatechange=cfunc;
xmlhttp.open("GET",url,true);
xmlhttp.send();
}

function myfunction2(){
	var ajaxDataFileName="xmlwithajaxdata.xml";
	//calling call back function
	loadXMLDoc(ajaxDataFileName,function(){
	if(xmlhttp.readyState==4 && xmlhttp.status==200){
	var xmldoc=xmlhttp.responseXML;
	var txt;
	for(var i=0;i<xmldoc.length();i++){
		txt=txt+xmldoc.childNodes[0].nodeValue +"<br>";
		}
	document.getElementById("header1").innerHTML=txt;
	}	
	
	});
	}
function myfunction1(){
	var ajaxDataFileName="ajax_data.txt";
	//calling call back function
	loadXMLDoc(ajaxDataFileName,function(){
	if(xmlhttp.readyState==4 && xmlhttp.status==200){
		document.getElementById("header1").innerHTML=xmlhttp.responseText;
	}	
	});//call to function ends here.
	}
	
</script>
</head>
<body>

<h2>AJAX</h2>
<button type="button" onclick="myfunction1()">Request data</button>
<button type="button" onclick="myfunction2()">Request data from insile of specific folder</button>
<div id="myDiv"></div>
<h1 id="header1" >h1</h1>
<h1 id="header2" >h2</h1>
</body>
</html>