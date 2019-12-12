<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/loststyle.css">
<script type="text/javascript">
	function marginCal(obj, labelId, nameId, goldId) {
		var inputGold = obj.value;
		var nameStr = nameId.innerHTML;
		var gold = goldId.innerHTML;
		var count = nameStr.replace(/[^0-9]/g, "");
		var result;
		if (inputGold == "") {
			labelId.innerHTML = "-";
			labelId.style.color = "black";
		} else {
			if (count != "") {
				result = count * inputGold - gold;
			}else {
				result = inputGold - gold;
			}
			labelId.innerHTML = result;
			if (result < 0) {
				labelId.style.color = "blue";
			} else if (result > 0) {
				labelId.style.color = "red";
			} else {
				labelId.innerHTML = "-";
				labelId.style.color = "black";
			}
		}
	}
</script>
</head>
<body>
	<hr>
	<form action="lostarkcal" method="get">
		<table>
			<tr>
				<td><label>크리스탈 100개 골드 가격 : </label></td>
				<td><input name="a" value="0" type="text" onfocus="this.value=''; return true"
					oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
				<td align="right"><button type="submit">계산하기</button></td>
			</tr>
		</table>
	</form>
	<hr>
	<table id="mari">
		<tr>
			<td style="text-align: center;"><label>아이템</label></td>
			<td style="text-align: center;"><label>크리스탈</label></td>
			<td style="text-align: center;"><label>골드환전</label></td>
			<td style="text-align: center;"><label>이익률</label></td>
			<td style="text-align: center;"><label>개당골드가</label></td>
		</tr>
		<tr>
			<td class="item-name"><label id="name1">${name1}</label></td>
			<td class="price"><label id="price1">${price1}</label></td>
			<td class="gold"><label id="gold1">${gold1}</label></td>
			<td class="margin"><label id="margin1">-</label></td>
			<td><input class="ingold"
				onkeyup="marginCal(this,margin1,name1,gold1)"
				oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
		</tr>
		<tr>
			<td class="item-name"><label id="name2">${name2}</label></td>
			<td class="price"><label id="price2">${price2}</label></td>
			<td class="gold"><label id="gold2">${gold2}</label></td>
			<td class="margin"><label id="margin2">-</label></td>
			<td><input class="ingold"
				onkeyup="marginCal(this,margin2,name2,gold2)"
				oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
		</tr>
		<tr>
			<td class="item-name"><label id="name3">${name3}</label></td>
			<td class="price"><label id="price3">${price3}</label></td>
			<td class="gold"><label id="gold3">${gold3}</label></td>
			<td class="margin"><label id="margin3">-</label></td>
			<td><input class="ingold"
				onkeyup="marginCal(this,margin3,name3,gold3)"
				oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
		</tr>
		<tr>
			<td class="item-name"><label id="name4">${name4}</label></td>
			<td class="price"><label id="price4">${price4}</label></td>
			<td class="gold"><label id="gold4">${gold4}</label></td>
			<td class="margin"><label id="margin4">-</label></td>
			<td><input class="ingold"
				onkeyup="marginCal(this,margin4,name4,gold4)"
				oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
		</tr>
		<tr>
			<td class="item-name"><label id="name5">${name5}</label></td>
			<td class="price"><label id="price5">${price5}</label></td>
			<td class="gold"><label id="gold5">${gold5}</label></td>
			<td class="margin"><label id="margin5">-</label></td>
			<td><input class="ingold"
				onkeyup="marginCal(this,margin5,name5,gold5)"
				oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
		</tr>
		<tr>
			<td class="item-name"><label id="name6">${name6}</label></td>
			<td class="price"><label id="price6">${price6}</label></td>
			<td class="gold"><label id="gold6">${gold6}</label></td>
			<td class="margin"><label id="margin6">-</label></td>
			<td><input class="ingold"
				onkeyup="marginCal(this,margin6,name6,gold6)"
				oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"></td>
		</tr>
	</table>
	<hr>
</body>
</html>