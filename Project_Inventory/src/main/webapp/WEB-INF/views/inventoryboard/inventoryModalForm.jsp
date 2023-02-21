<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">재고등록</h5>
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
								<td><div class="form-check">
										<input class="form-check-input" type="radio"
											name="flexRadioDefault" id="flexRadioDefault1"
											name="shoeGender"> <label class="form-check-label"
											for="flexRadioDefault1"> 남화 </label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio"
											name="flexRadioDefault" id="flexRadioDefault1"
											name="shoeGender"> <label class="form-check-label"
											for="flexRadioDefault1"> 여화 </label>
									</div></td>
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
				<button type="button" class="btn btn-primary addInventorylist">재고 등록</button>
				<button type="button" class="btn btn-secondary" data-dismiss="modal">모달
					닫기</button>

			</div>
		</div>
	</div>
</div>