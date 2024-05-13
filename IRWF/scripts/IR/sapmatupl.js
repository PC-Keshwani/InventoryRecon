var smat = $.context.sapmat.Response.d.results;
$.context.sapmatstock = {};
$.context.sapmatstock.request = [];

smat.reduce( function(res, val){
	if(!res[val.Material]){
		res[val.Material] = { material: val.Material, quantity: Number(0) };
		$.context.sapmatstock.request.push(res[val.Material])
	}
	res[val.Material].quantity += Number(val.MatlWrhsStkQtyInMatlBaseUnit);
  return res;
})

