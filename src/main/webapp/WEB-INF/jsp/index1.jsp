<html>
<body>
<h2>Hello World!</h2>
<h1>${testData}</h1>
<embed height="100" width="100" src="" />
<video controls="" name="media" id="media" onclick="test();">
	<source src="http://113.215.21.35/1Q2W3E4R5T6Y7U8I9O0P1Z2X3C4V5B/ok.96x.cn/20140218/%E5%A4%A7%E7%BA%A6%E5%9C%A8%E5%86%AC%E5%AD%A3%20%E9%BD%90%E7%A7%A6.mp3" type="audio/mpeg">
</video>
</body>
</html>
<script type="text/javascript">
	var Media = document.getElementById("media"); 
	for(var x in Media){
		//console.log(x);
	}
	function test(){
		alert(1);
	}
	var eventTester = function(e){
	     Media.addEventListener(e,function(){
	         console.log((new Date()).getTime(),e)
	     },false);
	 }
</script>