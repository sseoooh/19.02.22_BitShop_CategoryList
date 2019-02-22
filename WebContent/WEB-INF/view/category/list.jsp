<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<jsp:include page="../home/top.jsp"/>
<link rel="stylesheet" href="${css}/customer/list.css" />

<div class="grid-item" id="nav">
	<jsp:include page="../employee/nav.jsp"/>
</div>

<div class="grid-item" id="side_menu" style="border: 1px soild black">
	<div class="grid-container" style="width: 200px">
		<ul class="list-group" id="cate_side_menu">
			<li class="list-group-item" id="cate_list" style="background-color: green">카테고리 목록</li>
			<li class="list-group-item" id="cate_register">카테고리 등록</li>
			<li class="list-group-item" id="cate_search">카테고리 조회</li>
			<li class="list-group-item" id="cate_modify">카테고리 수정</li>
			<li class="list-group-item" id="cate_delete">카테고리 삭제</li>
		</ul>
	
	</div>
</div>
 <div class="grid-item" id="content" style="border: 1px solid black">
	<table id="cus_tab">
	  <tr>
	    <th>No.</th>
	    <th>카테고리 제목</th>
	    <th>카테고리 설명</th>
	  </tr>
	  	<c:forEach items="${list}"  var="cat" >
	  <tr>	 	  
		<td>${cat.categoryId}</td>
	    <td>${cat.categoryName}</td>
	    <td> <a href="#">${cat.description}</a></td>
	  </tr>
	  	</c:forEach>
	</table>
<div style="height: 50px"></div>    

</div>
<jsp:include page="../home/bottom.jsp"/>
<script>
//class="active"
$('.page').click(()=>{
alert('2페이지넘어감'+$(this).text());
location.assign('${ctx}/customer.do?cmd=cus_list&page=list&page_num='+$(this).text());
/*   
 pageNum, pageSize, c
 ?cmd=list&page=list&page_num=2&page_size=5
 <input type="hidden" name="cmd" value="access" />
   <input type="hidden" name="dir" value="customer" />
   <input type="hidden" name="page" value="list" /> 
   */
});

$('#cate_list').click(()=>{
	location.assign('${ctx}/category.do?cmd=cate_list&page=list');
});
/********************
 * 카테고리 등록
 ********************/
$('#cate_register').click(()=>{
	$('#cate_side_menu > li').attr('style','background-color: white');
	$('#cate_register').attr('style','background-color: green');
	$('#content').html('<form id="form">'
	+'  <div class="form-group">'
	+'    <label for="text">카테고리 이름:</label>'
	+'    <input type="text" class="form-control" name="cate_name">'
	+'  </div>'
	+'  <div class="form-group">'
	+'    <label for="text">상세 설명 :</label>'
	+'    <textarea rows="4" cols="50" class="form-control" name="description"></textarea>'
	+'  </div>'
	+'  <button type="submit" class="btn btn-default">Submit</button>'
	+'</form>');
});
/********************
 * 카테고리 조회
 ********************/
$('#cate_search').click(()=>{
	$('#cate_side_menu > li').attr('style','background-color: white');
	$('#cate_search').attr('style','background-color: green');
	$('#content').html('<form id="form">'
	+'  <div class="form-group">'
	+'    <label for="text">카테고리 검색:</label>'
	+' 		<select>'
	+' <option name ="cate_id" value="1001">스마트폰</option>'
	+' <option name ="cate_id" value="1002">데스크탑</option>'
	+' <option name ="cate_id" value="1003">노트북</option>'
	+' <select>'
	+'  <button type="submit" class="btn btn-default">Submit</button>'
	+'</form>');
});
/********************
 * 카테고리 삭제
 ********************/
 $('#cate_delete').click(()=>{
		$('#cate_side_menu > li').attr('style','background-color: white');
		$('#cate_delete').attr('style','background-color: green');
		$('#content').html('<form id="form">'
				+'  <div class="form-group">'
				+'    <label for="text">삭제할 카테고리:</label><br>'
				+'		<form action="">'
				+'			<input type="radio" name="gender" value="male"> 스마트폰<br>'
				+'			<input type="radio" name="gender" value="female"> 데스크탑<br>'
				+'			<input type="radio" name="gender" value="other"> 노트북'
				+'		</form>'
				+'  </div>'
				+'  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">삭제</button>'
				+'<div class="modal fade" id="myModal" role="dialog">'
				+'    <div class="modal-dialog">'
				+'      <!-- Modal content-->'
				+'      <div class="modal-content">'
				+'        <div class="modal-header">'
				+'          <button type="button" class="close" data-dismiss="modal">&times;</button>'
				+'          <h4 class="modal-title">Modal Header</h4>'
				+'        </div>'
				+'        <div class="modal-body">'
				+'  		<div class="form-group">'
				+'    			<label for="text">카테고리 이름:</label>'
				+'   			 <input type="text" class="form-control" name="cate_name">'
				+'  		</div>'
				+'  		<div class="form-group">'
				+'    			<label for="text">상세설명</label>'
				+'    			<textarea rows="4" cols="50" class="form-control" name="description"></textarea>'
				+'  		</div>'
				+'        </div>'
				+'        <div class="modal-footer">'
				+'          <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>'
				+'        </div>'
				+'      </div>'
				+'    </div>'
				+'</div>'
				+'</form>');
	});
 /********************
  * 카테고리 수정
  ********************/
 $('#cate_modify').click(()=>{
		$('#cate_side_menu > li').attr('style','background-color: white');
		$('#cate_modify').attr('style','background-color: #ddd');
		$('#content').html('<form id="form">'
				+'  <div class="form-group">'
				+'    <label for="text">수정할 카테고리:</label><br>'
				+'		<form action="">'
				+'			<input type="radio" name="gender" value="male"> 스마트폰<br>'
				+'			<input type="radio" name="gender" value="female"> 데스크탑<br>'
				+'			<input type="radio" name="gender" value="other"> 노트북'
				+'		</form>'
				+'  </div>'
				+'  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">수정</button>'
				+'<div class="modal fade" id="myModal" role="dialog">'
				+'    <div class="modal-dialog">'
				+'      <!-- Modal content-->'
				+'      <div class="modal-content">'
				+'        <div class="modal-header">'
				+'          <button type="button" class="close" data-dismiss="modal">&times;</button>'
				+'          <h4 class="modal-title">삭제하실 항목을 선택해주세요</h4>'
				+'        </div>'
				+'        <div class="modal-body">'
				+'  		<div class="form-group">'
				+'    			<label for="text">카테고리 이름:</label>'
				+'   			 <input type="text" class="form-control" name="cate_name">'
				+'  		</div>'
				+'  		<div class="form-group">'
				+'    			<label for="text">상세설명</label>'
				+'    			<textarea rows="4" cols="50" class="form-control" name="description"></textarea>'
				+'  		</div>'
				+'        </div>'
				+'        <div class="modal-footer">'
				+'          <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>'
				+'        </div>'
				+'      </div>'
				+'    </div>'
				+'</div>'
				+'</form>');
	});
/* <form action="/action_page.php">
<input type="checkbox" name="vehicle1" value="Bike"> I have a bike<br>
<input type="checkbox" name="vehicle2" value="Car"> I have a car<br>
<input type="checkbox" name="vehicle3" value="Boat" checked> I have a boat<br><br>
<input type="submit" value="Submit">
</form> */
</script>