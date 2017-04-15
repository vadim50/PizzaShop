
function add_to_cart(id)
{
	var total = 0;
	var key = 'product_' + id;
	var x = window.localStorage.getItem(key);
	x = x * 1 + 1;
	window.localStorage.setItem(key, x);

	update_orders_input();
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

function cart_get_orders()
{
		var orders = '';
	for(var i = 0 ; i < window.localStorage.length; i++)
	{
		var key = window.localStorage.key(i);
		var value = window.localStorage.getItem(key);

		if(key.indexOf('product_') == 0)
		{
			orders = orders + key + '=' + value + ',';
		}
	}
	return orders;
}

function update_orders_input()
{
	var orders = cart_get_orders();
	$('#orders_input').val(orders);

}

