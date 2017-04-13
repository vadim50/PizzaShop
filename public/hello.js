
function someThing()
	{
		var x = window.localStorage.getItem('s');
		x = x * 1 + 1;
		window.localStorage.setItem('s', x);

		alert(x);
	
	}