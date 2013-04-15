/*jslint white: true, plusplus: true, sloppy: true */
function ConsoleFormatter(linePrinter, leftMargin, rightMargin, tabWidth) {
	var formatStack, currentLine, currentLineWritten, spaceBuffer;

	function StringBuilder(initialString) {
		this.length = 0;
		this.content = [ ];
		if (typeof initialString === "string") {
			this.append(initialString);
		}
	}
	StringBuilder.prototype = {
		clear: function () {
			if (this.length > 0) {
				this.content = [ ];
				this.length = 0;
			}
		},
		append: function (str) {
			this.content.push(str);
			this.length += str.length;
		},
		toString: function () {
			return this.content.join("");
		}
	};

	function isFiniteNumber(thing) {
		return typeof thing === "number" && isFinite(thing);
	}

	function outputLine(force) {
		if (force || currentLineWritten) {
			linePrinter.println(currentLine.toString());
		}
	}

	function resetLine() {
		var i;
		currentLineWritten = false;
		currentLine.clear();
		spaceBuffer.clear();
		for (i = 0; i < leftMargin; i++) {
			currentLine.append(" ");
		}
	}

	function pushFormat(newLeftMargin, newRightMargin, newTabWidth) {
		outputLine(false);
		formatStack.push([ leftMargin, rightMargin, tabWidth ]);
		if (isFiniteNumber(newLeftMargin)) { leftMargin = newLeftMargin; }
		if (isFiniteNumber(newRightMargin)) { rightMargin = newRightMargin; }
		if (isFiniteNumber(newTabWidth)) { tabWidth = newTabWidth; }
		resetLine();
	}

	function pushRelativeFormat(leftMarginIncrease, rightMarginIncrease) {
		pushFormat(leftMargin + leftMarginIncrease,
		           rightMargin + rightMarginIncrease);
	}

	function popFormat() {
		var format = formatStack.pop();
		outputLine(false);
		leftMargin = format[0];
		rightMargin = format[1];
		tabWidth = format[2];
		resetLine();
	}

	function printToken(token) {
		if (token === null || token === undefined || token.length === 0) {
			return;
		}
		switch (token) {
		case "\n":
		case "\r\n":
		case "\r":
			outputLine(true);
			resetLine();
			break;

		case "\t":
			do {
				spaceBuffer.append(" ");
			} while ((currentLine.length + spaceBuffer.length) % tabWidth 
					!== 0);
			break;

		case " ":
			spaceBuffer.append(token);
			break;

		default:
			if (currentLine.length + spaceBuffer.length + token.length 
					< rightMargin)
			{
				if (spaceBuffer.length > 0) {
					currentLine.append(spaceBuffer.toString());
				}
			}
			else
			{
				outputLine(false);
				resetLine();
			}
			currentLine.append(token);
			currentLineWritten = true;
			spaceBuffer.clear();
			break;
		}
	}

	function print(str) {
		var tokens, i;

		str = String(str);
		tokens = str.split(/( |\t|\r\n?|\n)/);
		for (i = 0; i < tokens.length; i++) {
			printToken(tokens[i]);
		}
	}

	function println(str) {
		if (str === null || str === undefined) {
			print("\n");
		} else {
			print(str + "\n");
		}
	}

	function flush() {
		outputLine(false);
		resetLine();
	}

	if (!isFiniteNumber(leftMargin)) { leftMargin = 0; }
	if (!isFiniteNumber(rightMargin)) { rightMargin = 79; }
	if (!isFiniteNumber(tabWidth)) { tabWidth = 4; }

	formatStack = [ ];
	currentLine = new StringBuilder();
	spaceBuffer = new StringBuilder();

	this.pushFormat = pushFormat;
	this.pushRelativeFormat = pushRelativeFormat;
	this.popFormat = popFormat;
	this.print = print;
	this.println = println;
	this.flush = flush;
}
