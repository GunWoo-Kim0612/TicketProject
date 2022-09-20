<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div>
	<div class="cwa-top show-view">
		<dl class="area show-view-top clearfix">
			<dt>
				<p class="info clearfix">
					<a href="insertMypick.do?seq=${show.seq }&id=${login}"
						class="star" id="zimCount">찜하기</a> <span style="color: white;">SAC기획</span>
				</p>
				<p class="title">
					<span>${show.title}</span>
				</p>
				<ul>
					<li><span class="tit">기간</span><span> ${show.start_date }
					</span></li>
					<li><span class="tit">시간</span><span>19:30</span></li>
					<li><span class="tit">장소</span> <span> IBK챔버홀 </span></li>
					<li><span class="tit">입장연령</span><span>8세 이상</span></li>
					<li><span class="tit" style="font-size: 11px">관람시간(분)</span><span>${show.runtime }</span></li>
					<li><span class="tit">가격</span><span>${show.price }만원</span></li>
					<li><span class="tit">주최</span><span>예술의전당</span></li>
					<li><span class="tit">문의</span><span>02-580-1300</span></li>
				</ul>
			</dt>
			<dd>
				<p>
					<a href="/book?seq=${show.seq}"
						, onclick="window.open(this.href, '예매하기', 'width=890, height=585,left=400,top=200 ,status=no, menubar=no, toolbar=no, resizable=no, scrollbars=no'); return false;">
						<img src="https://tis-teamproject.s3.ap-northeast-2.amazonaws.com/upload/${show.img}" class="img-fluid"
						alt="..."> <span>예매</span>
					</a>
				</p>
			</dd>
		</dl>
	</div>
</div>
<div class="blank_80"></div>