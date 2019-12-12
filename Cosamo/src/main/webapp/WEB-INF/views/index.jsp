<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta property="og:type" content="website">
<meta property="og:title" content="COSAMO">
<meta property="og:url" content="http://cosamo.ga">
<meta property="og:description" content="Cosamo Comunity">
<meta property="og:image:width" content="400" />
<meta property="og:image:height" content="210" />
<meta property="og:image" content="resources/img/B4D9BFEEB7CEB5E5.png">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>COSAMO</title>

<link rel="stylesheet" type="text/css" href="resources/css/mystyle.css">

<script type="text/javascript">
	//<![CDATA[
	function calcHeight() {
		//find the height of the internal page

		var the_height = document.getElementById('the_iframe').contentWindow.document.body.scrollHeight;

		//change the height of the iframe
		document.getElementById('the_iframe').height = the_height;

		//document.getElementById('the_iframe').scrolling = "no";
		document.getElementById('the_iframe').style.overflow = "hidden";
	}
	//
</script>

</head>
<body>
	<div id="jb-container">
		<div id="jb-header">
			<div style="float: left;">
				<h1>Cosamo</h1>
			</div>
			<div id="nav">
				<ul>
					<li><a href="#"><img src="resources/img/bt_menu.png"
							class="jb-img"></a>
						<ul>
							<li><a href="./main" target="main_fram"><img
									src="resources/img/bt_submenu.png" class="jb-img"></a></li>
							<li><a href="https://www.youtube.com/embed/U1P_B5ZGtnE" target="main_fram"><img src="resources/img/bt_submenu.png"
									class="jb-img"></a></li>
							<li><a href="./lostcal" target="main_fram"><img
									src="resources/img/lostark_icon.png" class="jb-img"></a></li>
							<li><a href="#"><img src="resources/img/bt_submenu.png"
									class="jb-img"></a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<div id="jb-content" style="margin: 10px;">
			<iframe id="the_iframe" name="main_fram" onload="calcHeight();"
				frameborder="0" scrolling="no"
				style="overflow-x: hidden; overflow: auto; width: 100%; min-height: 100px;" src="./main"></iframe>
		</div>
		<div id="jb-footer">
			<div id="lk_discord">
				<a href="https://discord.gg/umb6mpQ"><img
					src="resources/img/JoinDiscord.png" class="jb-img"></a>
			</div>
		</div>
	</div>
</body>
</html>
