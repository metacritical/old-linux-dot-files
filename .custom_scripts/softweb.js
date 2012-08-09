//#!/usr/local/bin/casperjs

//var omslogin = {
//		run : function(){
//				var url = 'http://192.168.3.112/oms/login.aspx';
//				var page = require('webpage').create();
//				page.open(url, function(status){
//						var getuser = document.querySelectorAll("select.ddl")[0].item(1);
//						console.log(getuser);
//						phantom.exit();/
//				});				
//		}
//

//omslogin.run();
		
		//page.render('OMS_PDF.pdf');
		//console.log('PDF Outputted');	
		//				console.log('Page Success');

//				page.evaluate(function(){
//				});


//var url = 'http://192.168.3.112/oms/login.aspx';
//var casper = require('casper').create();
//casper.start(url, function(){
//		console.log(this.getCurrentUrl());
//		var user_select = document.getElementsByClassName('ddl')[0][1].innerText;
//		console.log(user_select);
//		casper.exit();
//});



/*
casper.run(function(){
		casper.capture('TEST_THIS.pdf')
		casper.exit();
});
*/



//var page = require('webpage').create();
//

//page.open(url, function(status){
//		if (status == 'success'){
//				console.log('Page success');
//		}
//		
//		var getuser = document.getElementsByClassName('ddl');
//		console.log(getuser);
//		page.render('OMS_PDF.pdf');
//		console.log('PDF Outputted');		
//		phantom.exit();
//});


//console.log(getuser);
//document.getElementsByClassName('ddl')[0].selectedIndex= getuser;
//

//setuser : function(selected_user){
//	
//	}
//	};
//}

//var Users = { 
//		getuser : function(user){
//				return 
//		}
//				}

//var user = Users.getuser());
//console.log(user);
//Users.setuser(user);
//var selected_index = document.getElementsByClassName('ddl')[0].selectedIndex= select_user;

var page = require('webpage').create();
var system = require('system');

page.open('http://192.168.3.112/oms',function(status){
		var title = page.evaluate(function(){
				return window.document.title;
		});

		
		
		var arg = function(){
				if (system.args.length === 1){
						return console.log("Please Pass some argument");
				}
				else{
						return console.log(system.args[1])
				}
		}

		console.log("Visited : " + title);
		console.log('Aggument passed :', arg());
		page.render('temp.png');
		console.log("EXIT");
		phantom.exit();
});


		//page.open('http://192.168.3.112/oms/Default.aspx', function(status){console.log("hi page visited")});
