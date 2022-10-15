<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="ToDoList.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<title>Document</title>
</head>

<body>

	<section class="vh-100 gradient-custom">
		<div class="container py-5 h-100">
			<div class="row d-flex justify-content-center align-items-center h-100">
				<div class="col col-xl-10">

					<div class="card">
						<div class="card-body p-5">

							<form class="d-flex justify-content-center align-items-center mb-4" action="list">
								<div class="form-outline flex-fill">
									<input type="text" id="form2" class="form-control" name="value" value="${value }" /> <label class="form-label" for="form2">New task...</label>
								</div>
								<button type="submit" class="btn btn-info ms-2">Add</button>
							</form>

							<!-- Tabs navs -->
							<ul class="nav nav-tabs mb-4 pb-2" id="ex1" role="tablist">
								<li class="nav-item" role="presentation"><a class="nav-link active" id="ex1-tab-1" data-mdb-toggle="tab" href="#ex1-tabs-1" role="tab" aria-controls="ex1-tabs-1" aria-selected="true">All</a></li>
								<li class="nav-item" role="presentation"><a class="nav-link" id="ex1-tab-2" data-mdb-toggle="tab" href="#ex1-tabs-2" role="tab" aria-controls="ex1-tabs-2" aria-selected="false">Active</a></li>
								<li class="nav-item" role="presentation"><a class="nav-link" id="ex1-tab-3" data-mdb-toggle="tab" href="#ex1-tabs-3" role="tab" aria-controls="ex1-tabs-3" aria-selected="false">Completed</a></li>
							</ul>
							<!-- Tabs navs -->

							<!-- Tabs content -->
							<div class="tab-content" id="ex1-content">
								<div class="tab-pane fade show active" id="ex1-tabs-1" role="tabpanel" aria-labelledby="ex1-tab-1">
									<ul class="list-group mb-0">
										<c:forEach var="list" items="${list }">
											<li class="list-group-item d-flex align-items-center border-0 mb-0 rounded" style="background-color: #f4f6f7;"><input class="form-check-input me-2" type="checkbox" value="" aria-label="..." /> ${list }</li>
										</c:forEach>
										<c:if test="${empty list }">
											<li class="list-group-item d-flex align-items-center border-0 mb-0 rounded" style="background-color: #f4f6f7;"><input class="form-check-input me-2" type="checkbox" value="" aria-label="..." /> 생성된 할 일이 없습니다.</li>
										</c:if>
									</ul>
								</div>
								<div class="tab-pane fade" id="ex1-tabs-2" role="tabpanel" aria-labelledby="ex1-tab-2">
									<ul class="list-group mb-0">
										<li class="list-group-item d-flex align-items-center border-0 mb-2 rounded" style="background-color: #f4f6f7;"><input class="form-check-input me-2" type="checkbox" value="" aria-label="..." /> Morbi leo risus</li>
										<li class="list-group-item d-flex align-items-center border-0 mb-2 rounded" style="background-color: #f4f6f7;"><input class="form-check-input me-2" type="checkbox" value="" aria-label="..." /> Porta ac consectetur ac</li>
										<li class="list-group-item d-flex align-items-center border-0 mb-0 rounded" style="background-color: #f4f6f7;"><input class="form-check-input me-2" type="checkbox" value="" aria-label="..." /> Vestibulum at eros</li>
									</ul>
								</div>
								<div class="tab-pane fade" id="ex1-tabs-3" role="tabpanel" aria-labelledby="ex1-tab-3">
									<ul class="list-group mb-0">
										<li class="list-group-item d-flex align-items-center border-0 mb-2 rounded" style="background-color: #f4f6f7;"><input class="form-check-input me-2" type="checkbox" value="" aria-label="..." checked /> <s>Cras justo odio</s></li>
										<li class="list-group-item d-flex align-items-center border-0 mb-2 rounded" style="background-color: #f4f6f7;"><input class="form-check-input me-2" type="checkbox" value="" aria-label="..." checked /> <s>Dapibus ac facilisis in</s></li>
									</ul>
								</div>
							</div>
							<!-- Tabs content -->

						</div>
					</div>

				</div>
			</div>
		</div>
	</section>



</body>

</html>