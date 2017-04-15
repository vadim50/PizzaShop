
function add_to_cart(id)
{
	var total = 0;
	var key = 'product_' + id;
	var x = window.localStorage.getItem(key);
	x = x * 1 + 1;
	window.localStorage.setItem(key, x);

	for ( var i = 0, len = localStorage.length; i < len; ++i )
	{
    	y = localStorage.getItem( localStorage.key( i ) ) ;
   		total = total  + y * 1;
	}

	document.getElementById("cart").innerHTML = "Total: " + total;
}


function someThing()
	{
		var x = window.localStorage.getItem('s');
		x = x * 1 + 1;
		window.localStorage.setItem('s', x);

		alert(x);
	
	}

function cart_get()
{
		var cnt = 0;
	for(var i = 0 ; i < window.localStorage.length; i++)
	{
		var key = window.localStorage.key(i);
		var value = window.localStorage.getItem(key);

		if(key.indexOf('product_') == 0)
		{
			cnt = cnt + value * 1;
		}
	}
	return cnt;
}



