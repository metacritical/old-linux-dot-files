#!/usr/local/bin/phantomjs

var login_page = require('webpage').create();

login_page.open("http://192.168.3.112/oms/login.aspx", function(status){
		if (status == 'success'){
				console.log("Page success");
				//login_page.render("OMS_PDF.pdf");
				//console.log('PDF Outputted');			
		}
});

phantom.exit();
