<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


		<div class="background">
			<div class="window">
				<div class="modalyes">
					<form action="/inventoryboard/addInventoryCheck" method="post">
						<fieldset>
							<legend>등록 양식</legend>
							<p>
								<input type="checkbox" name="shoeGender" value="남화"> 남화
								&nbsp; <input type="checkbox" name="shoeGender" value="여화">
								여화 &nbsp; <br> # 디자인NO <input type="text" name="design"
									size="10"> <br> # 색상 <input type="text"
									name="color" size="10"> <br> # 사이즈 <input
									type="text" name="size" size="10"> <br> # 수량 <input
									type="text" name="num" size="10"> <br> # 세일가 <input
									type="text" name="price" size="10"> <br> # 계 <input
									type="text" name="sum" size="10"> <br> <input
									type="submit" value="확인">
							</p>
						</fieldset>

					</form>

					<button id="modalClose">모달 닫기</button>
				</div>
			</div>
		</div>