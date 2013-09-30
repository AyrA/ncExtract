function printMail(e)
{
	var a=new Array();
	for(var i=0;i<DNS.length;i++)
	{
		if(DNS[i].value[0]=='{')
		{
			var content;
			try
			{
				content=JSON.parse(DNS[i].value);
			}
			catch(err)
			{
				content=DNS[i];
			}
			if(content.email && !contains(a,content.email))
			{
				a[a.length]=content.email;
				e.innerHTML+=content.email+"<br />";
			}
		}
	}
	a=null;
}

function printBM(e)
{
	var a=new Array();
	for(var j=0;j<IDs.length;j++)
	{
		if(IDs[j].value[0]=='{')
		{
			var content;
			try
			{
				content=JSON.parse(IDs[j].value);
				if(content.bitmessage && !contains(a,content.bitmessage))
				{
					a[a.length]=content.bitmessage;
					e.innerHTML+=content.bitmessage+"<br />";
				}
			}
			catch(err)
			{
				content=IDs[j].value;
				if(content.substr(0,3)=="BM-")
				{
					a[a.length]=content;
					e.innerHTML+=content+"<br />";
				}
			}
		}
	}
	a=null;
}

function contains(a, obj)
{
    for (var i = 0; i < a.length; i++)
	{
        if (a[i] === obj)
		{
            return true;
        }
    }
    return false;
}


window.onload=function()
{
	printMail(document.getElementById("email"));
	printBM(document.getElementById("bm"));
}