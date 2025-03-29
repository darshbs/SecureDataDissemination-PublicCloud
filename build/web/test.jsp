<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>

Name: <input type="text" id="myText">

<p>Click the button to change the value of the text field.</p>

<button onclick="myFunction()">Try it</button>

<script>
function myFunction() {
    document.getElementById("myText").value = "Johnny Bravo";
}
</script>

</body>
</html>
