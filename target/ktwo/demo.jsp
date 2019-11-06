<%--
  Created by IntelliJ IDEA.
  User: 泽阳
  Date: 2019/9/18
  Time: 17:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试</title>

</head>
<body>
<h2>请输入全民K歌链接</h2>
<center>
<input type="text" placeholder="请输入URL！" id="txt"><input type="submit" value="下载" id="sub">
<p></p>
</center>

<script src="js/jquery.js" type="text/javascript"></script>
<script>
    $(function () {
        var api="https://api.169740.com/api/get.kg?songurl=";
        $("#sub").click(function () {
            if($("#sub").val()==""){
                alert("链接不能为空！");
            }
            var url=api+$("#txt").val();
            $.ajax({
                url:url,
                type:"get",
                data:{

                },
                dataType:"json",
                success:function (data) {
                    var list = data;
                    for(var $i = 0; $i < list.length; $i++) {
                        alert( list[$i].playurl);
                    }
                }
            });
        })
    });
</script>
</body>
</html>
