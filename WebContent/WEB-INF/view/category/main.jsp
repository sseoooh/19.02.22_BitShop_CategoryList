<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<jsp:include page="../home/top.jsp"/>

	<div class="grid-container">
  		<div class="grid-item"><a href="home.do">홈</a></div>
  		<div class="grid-item"></div>
  		<div class="grid-item"></div>
  		<div class="grid-item" id="grid-item1">${customer.customerName}의 페이지</div>
	</div>

<div class="grid-item">
<div class="bs-example" data-example-id="thumbnails-with-custom-content">
    <div class="row">
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img data-src="holder.js/100%x200" alt="100%x200" src="https://post-phinf.pstatic.net/MjAxNzA5MDVfMjU0/MDAxNTA0NTcwODg5ODc0.rVmiVGCjuzFEH2dwGLVY-MgkrWm7urup5lNkNQs6RKEg.TI0YQBNhvQMFuoSLdT49XNpKW-_QIoPgqYn66LaqY_wg.JPEG/sec-desktop-dm500t7a-a78-dm500t7a-a78-Black-61594121.jpg?type=w1200" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
          <div class="caption">
            <h3 id="thumbnail-label">데스크탑<a class="anchorjs-link" href="#thumbnail-label"><span class="anchorjs-icon"></span></a></h3>
            <p>삼성 데스크탑5 DM500T7Z-AD76S의
세련되고 견고한 상단 라운딩형의 디자인은
유니크하면서도 크게 튀지 않아서
모든 분들의 취향을 만족시킬 수 있을 겁니다.</p>
            <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img data-src="holder.js/100%x200" alt="100%x200" src="https://i2.wp.com/insidestory.kr/wp-content/uploads/2018/07/gram4.jpg?resize=1160%2C773&ssl=1" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
          <div class="caption">
            <h3 id="thumbnail-label">노트북<a class="anchorjs-link" href="#thumbnail-label"><span class="anchorjs-icon"></span></a></h3>
            <p>그랬던 LG 노트북이 2014년부터 확 달라졌습니다. 시작은 바로 울트라 슬림 노트북 ‘그램’ 시리즈를 2014년 1월에 출시하고 부터입니다. 출시 첫 해에  12만 5,000대를 판매했습니다. 매해 새로운 그램 노트북을 출시했고 2017년에는 35만대를 팔았습니다. 그리고 2018년, 누적 판매 100만대를 기록하며 단일 브랜드 최초 ‘밀리언셀러’ 노트북이 되었습니다. 2013년까지만 해도 국내 울트라 슬림 노트북 시장은 삼성이 주도권을 잡고 있었습니다. 이를 LG전자가 ‘그램’ 시리즈로 역전하게 된 것입니다.</p>
            <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
          <img data-src="holder.js/100%x200" alt="100%x200" src="" data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
          <div class="caption">
            <h3 id="thumbnail-label">스마트폰<a class="anchorjs-link" href="#thumbnail-label"><span class="anchorjs-icon"></span></a></h3>
            <p></p>
            <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
 </div>
<jsp:include page="../home/bottom.jsp"/>  
<script>
$('#grid-item1').attr('style','cursor:pointer').click(()=>{
	alert('마이페이지 클릭');
	location.assign('${ctx}/customer.do?cmd=cus_retrieve&page=detail&customerID=${customer.customerID}');
});
</script>