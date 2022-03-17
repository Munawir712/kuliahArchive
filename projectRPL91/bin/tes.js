
function dF(s){
	var s1=unescape(s.substr(0,s.length-1)); 
	var t='';
	for(i=0; i<s1.length; i++) 
	t+=String.fromCharCode(s1.charCodeAt(i)-s.substr(s.length-1,1));
	// document.write(unescape(t));
	console.log(unescape(2));
}

console.log(dF('s'));



