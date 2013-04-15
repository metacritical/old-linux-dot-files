/*jslint rhino: true, sloppy: true, white: true, plusplus: true, 
         continue: true,
         maxerr: 50, indent: 4 */
/*global StringUtil: false, 
         Set: false,
         ConsoleFormatter: false, 
		 JSLINT: false 
*/

(function (argv) {
var stdout;

load("StringUtil.js");
load("Set.js");
load("ConsoleFormatter.js");

function ArgProvider(argv) {
	var index = 0;

	function reset() {
		index = 0;
	}

	function hasNext() {
		return index < argv.length;
	}

	function getNext(varname) {
		var next;
		if (!hasNext()) {
			throw "Missing value for " + varname;
		}
		next = argv[index++];
		return next;
	}

	this.hasNext = hasNext;
	this.getNext = getNext;
	this.reset = reset;
}


function ConfigParser(argv) {
	var args, config,
		nextEncoding, nextEncodingUsed,
		jslintBoolOptions, jslintNumberOptions;

	jslintBoolOptions = new Set([ "anon", "bitwise", "browser", "cap",
	    "continue", "css", "debug", "devel", "eqeq", "es5", "evil", "forin",
	    "fragment", "newcap", "node", "nomen", "on", "passfail", "plusplus",
	    "properties", "regexp", "rhino", "undef", "unparam", "sloppy", "sub",
	    "vars", "white", "widget", "windows" ]); 

	jslintNumberOptions = new Set([ "indent", "maxerr", "maxlen" ]);

	args = new ArgProvider(argv);

	function reset() {
		args.reset();

		nextEncoding = "UTF8";
		nextEncodingUsed = true;

		config = {
			jslint: "jslint.js",
			header: null,
			files: [ ],
			lintOptions: { }
		};
	}

	function parseLintArg(arg) {
		var argString, argValue, jslintOption;

		if (!StringUtil.startsWith(arg, "--")) {
			return false;
		}
		jslintOption = arg.slice(2);
		if (jslintBoolOptions.contains(jslintOption)) {
			config.lintOptions[jslintOption] = true;
			return true;
		}
		if (jslintNumberOptions.contains(jslintOption)) {
			argString = args.getNext(arg);
			argValue = parseInt(argString, 10);
			if (!isFinite(argValue)) {
				throw "Expected numeric value for option " + arg;
			}
			config.lintOptions[jslintOption] = argValue;
			return true;
		}
	}

	function parseArg() {
		var arg, newEncoding;

		arg = args.getNext();
		switch (arg) {
		case "-e":
		case "--encoding":
			newEncoding = args.getNext(arg);
			if (nextEncoding !== newEncoding) {
				nextEncoding = newEncoding;
				nextEncodingUsed = false;
			}
			break;
		case "-j":
		case "--jslint":
			config.jslint = args.getNext(arg);
			break;
		case "-h":
		case "--header":
			config.header = { 
				path: args.getNext(arg), 
				encoding: nextEncoding 
			};
			nextEncodingUsed = true;
			break;
		default:
			if (!parseLintArg(arg)) {
				config.files.push({ path: arg, encoding: nextEncoding });
				nextEncodingUsed = true;
			}
			break;
		}
	}

	this.parse = function () {
		reset();
		while (args.hasNext()) {
			parseArg();
		}

		if (!nextEncodingUsed) {
			stdout.println("Warning: --encoding option only applies to " +
				"files specified after it. Final --encoding argument '" + 
				nextEncoding + "' was not applied to any file.");
		}
		return config;
	};
}


function printFunctionAnalysis(path, functions, properties, lineOffset) {
	var i, j, func, propName, propArray, headerPrinted;
	if ((!functions || functions.length === 0) && 
		(!properties || properties.length === 0)) {
		return;
	}
	for (i = 0; i < functions.length; i++) {
		func = functions[i];
		headerPrinted = false;

		for (j = 0; j < properties.length; j++) {
			propName = properties[j];
			propArray = func[propName];
			if (!propArray || propArray.length === 0) {
				continue;
			}
			if (!headerPrinted) {
				stdout.println("");
				stdout.println(path);
				stdout.println("Function@" + 
						(func.line - lineOffset) + 
						": " + func.name);
				headerPrinted = true;
			}
			stdout.println(propName + ": " + propArray.join(", "));
		}
	}
}


function printLintErrors(path, errors, lineOffset) {
	var i, error;
	if (!errors) {
		return;
	}
	for (i = 0; i < errors.length; i++) {
		error = errors[i];

		// if JSLINT aborts, the last error object is null
		if (!error) {	
			continue;
		}
		stdout.println("");
		stdout.println(path);
		stdout.println("Error@" + (error.line - lineOffset) + 
				":" + error.character + 
				": " + error.reason);
		stdout.println(error.evidence);
	}
}


function lintSource(path, source, options, lineOffset) {
	var success, data;

	success = JSLINT(source, options);
	data = JSLINT.data();

	printLintErrors(path, data.errors, lineOffset);
	printFunctionAnalysis(path, data.functions, 
			[ "unused", "undef" ], lineOffset);
}


function countNewlines(text) {
	var newLine, count;
   
	newLine = /\r\n?|\n/g;
	count = 0;

	while (newLine.test(text)) {
		count++;
	}
	return count;
}


function doLint(config) {
	var header, i, source, file, lineOffset;

	load(config.jslint);

	if (config.header) {
		header = readFile(config.header.path, config.header.encoding) + "\n";
		lineOffset = countNewlines(header);
	} else {
		header = "";
		lineOffset = 0;
	}

	for (i = 0; i < config.files.length; i++) {
		file = config.files[i];
		source = readFile(file.path, file.encoding);
		lintSource(file.path, header + source, config.lintOptions, lineOffset);
	}
}


function main(argv) {
	var config;

	try {
		config = new ConfigParser(argv).parse();
	} catch (message) {
		stdout.println(message);
		return;
	}

	if (config.files.length === 0) {
		stdout.println("No files specified.");
		return;
	} else {
		doLint(config);
	}
}

stdout = new ConsoleFormatter({ println: function (str) { print(str); }});
main(argv);
}(arguments));
