		function Captcha() {
			var alpha = new Array('1','2','3','4','5','6','7','8','9','0');
			var i;
			for (i = 0; i < 4; i++) {
				var a = alpha[Math.floor(Math.random() * alpha.length)];
				var b = alpha[Math.floor(Math.random() * alpha.length)];
				var c = alpha[Math.floor(Math.random() * alpha.length)];
				var d = alpha[Math.floor(Math.random() * alpha.length)]; 
			}
			var code = a+b+c+d;
			document.getElementById("mainCaptcha").value = code
		}
		function ValidCaptcha(e) {  
			var form = document.getElementById("loginform"); 
			var string1 = document.getElementById('mainCaptcha').value;
			var string2 = document.getElementById('txtInput').value; 
			if (string1==string2) {
				form.submit();
				return true;
			} else {  
				e.preventDefault();
				returnToPreviousPage();
				return false;
			}
		}