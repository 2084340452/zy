<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
div{
border: 1px black solid;
}
*{
padding: 0px;
margin: 0px;
}
.clear{
float: none;
}
#div{
width: 1010px;
height: 1200px;
margin: auto;
}
#div2{
width: 1000px;
height: 200px;
}
#div2 ul{
width: 800px;
height: 200px;
}
#div2 ul li{
list-style: none;
float: left;
width: 200px;
}
#div3{
width: 200px;
height: 1000px;
float: left;
}
#div3 ul li{
list-style: none;
height: 200px;
width: 200px;
}

#div4{
float:right;
width: 800px;
height: 600px;
}
#div5{
float:right;
width: 800px;
height: 400px;
}
</style>
</head>
<body>
<div id="div">
<div id="div2">
<ul>
<li>1</li>
<li>2</li>
<li>3</li>
<li>4</li>
</ul>
</div>
<div id = "div3">
<ul>
<li>1</li>
<li>2</li>
<li>3</li>
<li>4</li>
</ul>

</div>
<div id = "div4"></div>
<div id = "div5"></div>

 <!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
    <script src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>
    <script type="text/javascript">
        var E = window.wangEditor
        var editor = new E('#div5')
        // 或者 var editor = new E( document.getElementById('editor') )
        editor.create()
    </script>
</div>
</body>
</html>