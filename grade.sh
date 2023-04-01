git clone $1
if [!= -f MarkdownParse.java]; then
    echo MarkdownParse.java does not exist
fi
cp GradingTests.java markdown-parse/
cd markdown-parse
javac -cp lib/*:. GradingTests.java MarkdownParse.java
java -cp lib/*:. org.junit.runner.JUnitCore GradingTests
