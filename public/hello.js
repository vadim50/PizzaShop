
function add_to_cart(id)
{
	var key = 'product' + id;
	var x = window.localStorage.getItem(key);
	x = x * 1 + 1;
	window.localStorage.setItem(key, x)
}
function someThing()
	{
		var x = window.localStorage.getItem('s');
		x = x * 1 + 1;
		window.localStorage.setItem('s', x);

		alert(x);
	
	}




