String s="Inside a tag,you will find <tag>multiple</tag>";
s+="<tag>pieces</tag> of<tag>content</tag>.";
String[][] m=matchAll(s,"<tag>(.*?)</tag>");
for(int i=0;i<m.length;i++){
	println("Found '"+m[i][1]+"'inside the tag.");
}
