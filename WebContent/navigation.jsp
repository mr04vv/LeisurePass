<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<link rel="stylesheet" href="./navigation.css">
<link rel="stylesheet" href="./css/style.css">

<div id="navigation">
	<div class="navigation-contents">
	<s:form action="SearchItemAction">
		<ul>
			<li>
				<div class="keywords">
				<s:textfield name="keywords" placeholder="何して遊ぶ？" />
				</div>
			</li>
			<li>
				<div class="placeId cp_sl01">
				<s:select name="placeId" list="#session.mPlaceDtoList" listValue="placeName" listKey="placeId" />
				</div>
			</li>
			<li>
				<div class="categoryId cp_sl01">
				<s:select name="categoryId" list="#session.mCategoryDtoList" listValue="categoryName" listKey="categoryId" />
				</div>
			</li>
			<li>
			<h3>日にちを選ぶ</h3>
			</li>
			<li>
				<div class="targetDate">
				<s:textfield id="date_val" name="targetDate" value="%{#session.targetDate}" readonly="true" />
				<div id="datepicker" style="font-size: 20px;"></div>
				</div>
			</li>
			<li>
				<s:submit value="検索" />
			</li>
		</ul>
	</s:form>
	</div>
</div>

