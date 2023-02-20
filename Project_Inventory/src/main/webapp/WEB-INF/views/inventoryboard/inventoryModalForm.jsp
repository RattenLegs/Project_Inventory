<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="/inventoryboard/addInventoryCheck" method="post">
					<table class="table table-hover">
						<tbody class="t-control">
							<tr>
								<td class="t-title">남화/여화</td>
								<td><input type="checkbox" name="shoeGender" value="남화">남화
								<input type="checkbox" name="shoeGender" value="여화">여화</td>
							</tr>
							<tr>
								<td class="t-title">디자인NO</td>
								<td><input class="form-control input-sm" name="design"></td>
							</tr>
							<tr>
								<td class="t-title">색상</td>
								<td><input class="form-control input-sm" name="color"></td>
							</tr>
							<tr>
								<td class="t-title">사이즈</td>
								<td><input class="form-control input-sm" name="size"></td>
							</tr>
							<tr>
								<td class="t-title">수량</td>
								<td><input class="form-control input-sm" name="num"></td>
							</tr>
							<tr>
								<td class="t-title">세일가</td>
								<td><input class="form-control input-sm" name="price"></td>
							</tr>
							<tr>
								<td class="t-title">계</td>
								<td><input class="form-control input-sm" name="sum"></td>
							</tr>

							<tr>
								<td class="t-title">CONTENT</td>
								<td><textarea class="form-control" rows="7" name="content"></textarea>
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary">재고 등록</button>
				<button type="button" class="btn btn-secondary" data-dismiss="modal">모달 닫기</button>

			</div>
		</div>
	</div>
</div>

<%-- <link
	href="${pageContext.request.contextPath}/resources/modal/modal.css"
	rel="stylesheet"> --%>

<!-- <div class="background">
	<div class="window">
		<div class="modalyes">
			<form action="/inventoryboard/addInventoryCheck" method="post">
				<button type="button" class="btn-close" aria-label="Close">X</button>
				<table class="table table-hover">
					<tbody class="t-control">
						<tr>
							<td class="t-title">남화/여화</td>
							<td><input type="checkbox" name="shoeGender" value="남화"><input
								type="checkbox" name="shoeGender" value="여화"></td>
						</tr>
						<tr>
							<td class="t-title">디자인NO</td>
							<td><input class="form-control input-sm" name="design"></td>
						</tr>
						<tr>
							<td class="t-title">색상</td>
							<td><input class="form-control input-sm" name="color"></td>
						</tr>
						<tr>
							<td class="t-title">사이즈</td>
							<td><input class="form-control input-sm" name="size"></td>
						</tr>
						<tr>
							<td class="t-title">수량</td>
							<td><input class="form-control input-sm" name="num"></td>
						</tr>
						<tr>
							<td class="t-title">세일가</td>
							<td><input class="form-control input-sm" name="price"></td>
						</tr>
						<tr>
							<td class="t-title">계</td>
							<td><input class="form-control input-sm" name="sum"></td>
						</tr>

						<tr>
														<td class="t-title">CONTENT</td>
							<td><textarea class="form-control" rows="7" name="content"></textarea>
							</td>
						</tr>
					</tbody>
				</table>

			</form>
			<button id="modalClose" class="btn btn-info" style="float: right;">모달
				닫기</button>
			<button id="modalClose" class="btn btn-info" style="float: right;">재고
				등록</button>
		</div>
	</div>
</div> -->

<%-- 		 <section>
       <div class="background">
            <div class="window">
                <div class="col-xs-12 content-wrap">
                    <form action="<c:url value='/inventoryboard/inventoryCheck' />" name="registForm" method="post">
	                    <table class="table">
	                        <tbody class="t-control">
	                            <tr>
	                                <td class="t-title">NAME</td>
	                                <td><input class="form-control input-sm" name="writer" value="${login.userId}" readonly></td>
	                            </tr>
	                            <tr>
	                                <td class="t-title">TITLE</td>
	                                <td><input class="form-control input-sm" name="title"></td>
	                            </tr>
	                            <tr>
	                                <td class="t-title">CONTENT</td>
	                                <td>
	                                <textarea class="form-control" rows="7" name="content"></textarea>
	                                </td>                 
	                            </tr>
	                        </tbody>
	                    </table>
                    </form>
                    <div class="titlefoot">
                        <button class="btn" id="registBtn">등록</button>
                        <button class="btn" id="listBtn">목록</button>
                    </div>
                </div>
            </div>    
       </div>
    </section> --%>


<!--     <p>
						<input type="checkbox" name="shoeGender" value="남화"> 남화
						&nbsp; <input type="checkbox" name="shoeGender" value="여화">
						여화 &nbsp; <br> # 디자인NO <input type="text" name="design"
							size="10"> <br> # 색상 <input type="text" name="color"
							size="10"> <br> # 사이즈 <input type="text" name="size"
							size="10"> <br> # 수량 <input type="text" name="num"
							size="10"> <br> # 세일가 <input type="text"
							name="price" size="10"> <br> # 계 <input type="text"
							name="sum" size="10"> <br> <input type="submit"
							value="확인">
					</p> -->