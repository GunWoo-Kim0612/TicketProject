<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

사용자 : ${login }
<main>
<section class="ftco-section">
	<div class="container">
		<div class="row">

			<div class="col-md-12 text-center"></div>

			<div class="col-md-12">
				<div class="featured-carousel owl-carousel">

					<c:forEach items="${showList}" var="show">
						<div class="item">
							<div class="work">
								<div
									class="img d-flex align-items-center justify-content-center rounded"
									style="background-image: url(https://tis-teamproject.s3.ap-northeast-2.amazonaws.com/upload/${show.img});">
									<a href="/getShow.do?seq=${show.seq }"
										class="icon d-flex align-items-center justify-content-center">
										<span class="ion-ios-search"></span>
									</a>
								</div>
								<div class="text pt-3 w-100 text-center">
									<h3>
										<a href="#">${show.title }</a>
									</h3>
									<span>${show.start_date} ${show.runtime} </span>
								</div>
							</div>
						</div>
					</c:forEach>


					
				</div>
			</div>
		</div>
	</div>
</section>

<div class="album py-5 bg-light">
	<div class="container">

		<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
			<div class="col">
				<div class="card shadow-sm">
					<svg class="bd-placeholder-img card-img-top" width="100%"
						height="225" xmlns="http://www.w3.org/2000/svg" role="img"
						aria-label="Placeholder: Thumbnail"
						preserveAspectRatio="xMidYMid slice" focusable="false">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%"
							fill="#55595c" />
						<text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text>
                            </svg>

					<div class="card-body">
						<p class="card-text">This is a wider card with supporting text
							below as a natural lead-in to additional content. This content is
							a little bit longer.</p>
						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">
								<button type="button" class="btn btn-sm btn-outline-secondary">View</button>
								<button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
							</div>
							<small class="text-muted">9 mins</small>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
</div>

</main>