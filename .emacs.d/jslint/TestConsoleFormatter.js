/*jslint white: true, plusplus: true, sloppy: true, rhino: true */
/*global ConsoleFormatter: false */
load("ConsoleFormatter.js");
var linePrinter = { println: function(str) { print(str); }};
var console = new ConsoleFormatter(linePrinter);

var longString = "This is a fairly long line without any line breaks and I expect HeySurpriseLongUnbrokenWord!!! the words to wrap at ther right margin which is set to some number that I'm going to start changing.";

console.println("Default settings");
console.println(longString);

console.pushFormat(8);
console.println("leftMargin specified as 8, others undef");
console.println(longString);

console.pushRelativeFormat(16, -16);
console.println("leftMargin increased by 16, right -16");
console.println(longString);

console.popFormat();
console.println("Pop");
console.println(longString);

console.popFormat();
console.println("Pop");
console.println(longString);

console.println("Here's a long unsightly string that's sure to exceed the line width without having any word breaks at all");
console.println("http://www.amazon.com/s/ref=nb_sb_ss_i_0_16?url=search-alias%3Daps&field-keywords=javascript+the+good+parts&x=0&y=0&sprefix=Javascript+the+g");

console.println("Tab test");
console.println("0\t1\t2\t3\t4");
console.println(" 0\t1\t2\t3\t4");
console.println("  0\t1\t2\t3\t4");
console.println("   0\t1\t2\t3\t4");
console.println("    0\t1\t2\t3\t4");
console.println("     0\t1\t2\t3\t4");

console.pushFormat(null, null, 6);
console.println("Set tabs to 6");
console.println("0\t1\t2\t3\t4");
console.println(" 0\t1\t2\t3\t4");
console.println("  0\t1\t2\t3\t4");
console.println("   0\t1\t2\t3\t4");
console.println("    0\t1\t2\t3\t4");
console.println("     0\t1\t2\t3\t4");

