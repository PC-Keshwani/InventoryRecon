$.context.sapbatch = {};
$.context.sapbatch.Request = {};
$.context.sapbatch.Request.requests = [];
var data = {};

for (var i = 0; i < $.context.sapmatstock.request.length; i++) {
	data = {
		"material": $.context.sapmatstock.request[i].material,
		"quantity": $.context.sapmatstock.request[i].quantity
	}

	$.context.sapbatch.Request.requests.push(
		{
			id: (i + 1).toString(),
			method: "POST",
			url: "/sapmatSet",
			headers: { "content-type" : "application/json;odata.metadata=minimal"},
			body: data
		}
	)
}