		function Captcha() {
			var alpha = new Array('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i',
					'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u',
					'v', 'w', 'x', 'y', 'z');
			var i;
			for (i = 0; i < 6; i++) {
				var a = alpha[Math.floor(Math.random() * alpha.length)];
				var b = alpha[Math.floor(Math.random() * alpha.length)];
				var c = alpha[Math.floor(Math.random() * alpha.length)];
				var d = alpha[Math.floor(Math.random() * alpha.length)];
				var e = alpha[Math.floor(Math.random() * alpha.length)];
				var f = alpha[Math.floor(Math.random() * alpha.length)];
				var g = alpha[Math.floor(Math.random() * alpha.length)];
			}
			var code = a+b+c+d+e+f+g;
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