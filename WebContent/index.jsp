<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
td{
border: solid 1px black;
}
</style>
</head>
<body>

<div style="margin: 0 auto; width: 1080px;">
<form action="">
<table style="border: 1px solid; background-color: burlywood ;">
<tr>
<td>招聘对象</td>
<td><input type="text" style="width:120px;" ></td>
</tr>
<tr>
<td>招聘人数</td>
<td><input type="text" style="width:20px;"></td>
</tr>
<tr>
<td>工作地点</td>
<td><input type="text" style="width:220px;"></td>
</tr>
<tr>
<td>工资待遇</td>
<td><input type="text" style="width:50px;"></td>
</tr>
<tr>
<td>发布日期</td>
<td><input type="text" style="width:40px;"></td>
</tr>
<tr>
<td>有效天数</td>
<td><input type="text" style="width:20px;">天</td>
</tr>
<tr>
<td>招聘要求</td>
<td> <div id="div1">
    <p>欢迎使用 wangEditor 富文本编辑器</p>
</div></td>
</tr>
<tr>
<td><input type="submit" value="确定"> <input type="button" value="取消"></td>
</tr>
</table>
</form>



</div>


<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>
<script type="text/javascript">
    var E = window.wangEditor
    var editor = new E('#div1')
    // 自定义菜单配置
    editor.customConfig.menus = [
    	'head',  // 标题
        'bold',  // 粗体
        'fontSize',  // 字号
        'fontName',  // 字体
        'italic',  // 斜体
        'foreColor',  // 文字颜色
        'quote',  // 引用
        'emoticon',  // 表情
        'image',  // 插入图片
        'table',  // 表格
        'video',  // 插入视频
        'code',  // 插入代码
        'undo',  // 撤销
    ]
    
    // 上传的后台代码
    editor.customConfig.uploadImgServer = '${pageContext.request.contextPath}/upload'
    	// 将图片大小限制为 3M
    	editor.customConfig.uploadImgMaxSize = 100 * 1024 * 1024
    	
    	// 限制一次最多上传 5 张图片
    	editor.customConfig.uploadImgMaxLength = 5
    	
    	editor.customConfig.uploadImgHooks = {
    		    before: function (xhr, editor, files) {
    		        // 图片上传之前触发
    		        // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象，files 是选择的图片文件
    		        
    		        // 如果返回的结果是 {prevent: true, msg: 'xxxx'} 则表示用户放弃上传
    		        // return {
    		        //     prevent: true,
    		        //     msg: '放弃上传'
    		        // }
    		    },
    		    success: function (xhr, editor, result) {
    		        // 图片上传并返回结果，图片插入成功之后触发
    		        // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象，result 是服务器端返回的结果
    		    },
    		    fail: function (xhr, editor, result) {
    		        // 图片上传并返回结果，但图片插入错误时触发
    		        // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象，result 是服务器端返回的结果
    		    },
    		    error: function (xhr, editor) {
    		        // 图片上传出错时触发
    		        // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象
    		    },
    		    timeout: function (xhr, editor) {
    		        // 图片上传超时时触发
    		        // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象
    		    },

    		    // 如果服务器端返回的不是 {errno:0, data: [...]} 这种格式，可使用该配置
    		    // （但是，服务器端返回的必须是一个 JSON 格式字符串！！！否则会报错）
    		    customInsert: function (insertImg, result, editor) {
    		        // 图片上传并返回结果，自定义插入图片的事件（而不是编辑器自动插入图片！！！）
    		        // insertImg 是插入图片的函数，editor 是编辑器对象，result 是服务器端返回的结果

    		        // 举例：假如上传图片成功后，服务器端返回的是 {url:'....'} 这种格式，即可这样插入图片：
    		        var url = result.url
    		        insertImg(url)

    		        // result 必须是一个 JSON 格式字符串！！！否则报错
    		    
    		    }
    		}
 
    editor.create()
</script>
</body>
</html>