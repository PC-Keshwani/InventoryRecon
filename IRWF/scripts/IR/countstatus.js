var array = [];
array = $.context.sapbatchResponse.responses;
$.context.totrec = array.length;
$.context.succ = 0;
$.context.err = 0;

for ( var i=0; i<array.length; i++){
    if(array[i].status >= 200 && array[i].status < 300){
        $.context.succ++;
    } else {
        $.context.err++;
}
}
