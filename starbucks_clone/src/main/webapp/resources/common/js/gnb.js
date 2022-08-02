$(document).ready(function () {
  /* gnb */
  var gnb =
    '		<ul>' +
    '			<!-- COFFEE -->' +
    '			<li class="gnb_nav01">' +
    '				<h2><a href="#">COFFEE</a></h2>' +
    '				<div class="gnb_sub_wrap">' +
    '					<div class="gnb_sub">' +
    '						<div class="gnb_sub_inner">' +
    '							<ul>' +
    '								<li class="gnb_sub_ttl"><a href="/starbucks/coffee/product_list">커피</a></li>' +
    '								<li><a href="/starbucks/coffee/product_list">스타벅스 원두</a></li>' +
//    '								<li><a href="/starbucks/coffee/product_list?PACKAGE=01">스타벅스 비아</a></li>' +
//    '								<li><a href="/starbucks/coffee/product_list?PACKAGE=02">스타벅스 오리가미</a></li>' + // 20210915 삭제
//    '								<li><a href="/starbucks/coffee/product_list?PACKAGE=05">스타벅스앳홈 by 캡슐</a></li>' + // 20210915 추가
    '							</ul>' +
    '							<ul>' +
    '								<li class="gnb_sub_ttl"><a href="/starbucks/coffee/productFinder">나와 어울리는 커피</a></li>' +
    '							</ul>' +
    //'							<ul>' +
    //'								<li class="gnb_sub_ttl"><a href="starbucks/coffee/reserve_info">스타벅스 리저브™</a></li>' +
    //'								<li><a href="starbucks/coffee/reserve_magazine_list">RESERVE MAGAZINE</a></li>' +
    //'							</ul>' +
    '							<ul>' +
    '								<li class="gnb_sub_ttl"><a href="/starbucks/coffee/espresso">에스프레소 음료</a></li>' +
    '								<li><a href="/starbucks/coffee/doppio">도피오</a></li>' +
    '								<li><a href="/starbucks/coffee/espresso_macchiato">에스프레소 마키아또</a></li>' +
    '								<li><a href="/starbucks/coffee/americano">아메리카노</a></li>' +
    '								<li><a href="/starbucks/coffee/caramel_macchato">마키아또</a></li>' +
    '								<li><a href="/starbucks/coffee/cappuccino">카푸치노</a></li>' +
    '								<li><a href="/starbucks/coffee/latte">라떼</a></li>' +
    '								<li><a href="/starbucks/coffee/mocha">모카</a></li>' +
    '							</ul>' +
    //'							<ul>' +
    //'								<li class="gnb_sub_ttl"><a href="/starbucks/coffee/higher_enjoy">최상의 커피를 즐기는 법</a></li>' +
    //'								<li><a href="/starbucks/coffee/higher_enjoy">커피 프레스</a></li>' +
    //'								<li><a href="/starbucks/coffee/higher_enjoy?PACKAGE=01">푸어 오버</a></li>' +
    //'								<li><a href="/starbucks/coffee/higher_enjoy?PACKAGE=02">아이스 푸어 오버</a></li>' +
    //'								<li><a href="/starbucks/coffee/higher_enjoy?PACKAGE=03">커피 메이커</a></li>' +
    //'								<li><a href="/starbucks/coffee/higher_enjoy?PACKAGE=04">리저브를 매장에서 다양하게 즐기는 법</a></li>' +
    //'							</ul>' +
    //'							<ul>' +
    								//  20210914 수정
    //'								<li class="gnb_sub_ttl"><a href="/starbucks/coffee/story">커피 이야기</a></li>' +
    //'								<li><a href="/starbucks/coffee/story">농장에서 우리의 손으로</a></li>' +
    //'								<li><a href="/starbucks/coffee/story?PACKAGE=01">에스프레소 초이스</a></li>' +
    //'								<li><a href="/starbucks/coffee/story?PACKAGE=02">최상의 아라비카 원두</a></li>' +
    //'								<li><a href="/starbucks/coffee/story?PACKAGE=03">스타벅스 로스트 스펙트럼</a></li>' +
    //'								<li><a href="/starbucks/coffee/story?PACKAGE=05">스타벅스 디카페인</a></li>' +
    //'								<li><a href="/starbucks/coffee/story?PACKAGE=04">클로버® 커피 추출 시스템</a></li>' +
									//  e:20210914 수정
    //'							</ul>' +
    '						</div>' +
    '					</div>' +
    '					<!-- 텍스쳐 bg -->' +
    '					<div class="gnb_sub_txbg">' +
    '						<div class="gnb_sub_tx_inner">' +
    '							<div class="gnb_sub_tx_left">' +
    '								<h3><a href="/starbucks/coffee/productFinder">나와 어울리는 커피 찾기</a></h3>' +
    '								<p class="gnb_sub_ex_txt">스타벅스가 여러분에게 어울리는 커피를 찾아드립니다.</p>' +
//    '								<h3><a href="#">최상의 커피를 즐기는 법</a></h3>' +
 //   '								<p class="gnb_sub_ex_txt">여러가지 방법을 통해 다양한 풍미의 커피를 즐겨보세요.</p>' +
    '							</div>' +
    '							<div class="gnb_sub_tx_right">' +
    '							</div>' +
    '						</div>' +
    '					</div>' +
    '					<!-- 텍스쳐 bg end -->' +
    '				</div>' +
    '			</li>' +
    '			<!-- COFFEE end -->' +
    '			<!-- MENU -->' +
    '			<li class="gnb_nav02">' +
    '				<h2><a href="#">MENU</a></h2>' +
    '				<div class="gnb_sub_wrap">' +
    '					<div class="gnb_sub">' +
    '						<div class="gnb_sub_inner">' +
    '							<ul>' +
    '								<li class="gnb_sub_ttl"><a href="/starbucks/menu/drink_list">음료</a></li>' +
    '								<li><a href="/starbucks/menu/drink_list?&CATE_CD=product_cold_brew">콜드 브루</a></li>' +
    '								<li><a href="/starbucks/menu/drink_list?&CATE_CD=product_brood">브루드 커피</a></li>' +
    '								<li><a href="/starbucks/menu/drink_list?&CATE_CD=product_espresso">에스프레소</a></li>' +
    '								<li><a href="/starbucks/menu/drink_list?&CATE_CD=product_frappuccino">프라푸치노</a></li>' +
    '								<li><a href="/starbucks/menu/drink_list?&CATE_CD=product_blended">블렌디드</a></li>' +
    '								<li><a href="/starbucks/menu/drink_list?&CATE_CD=product_fizzo">스타벅스 피지오</a></li>' +
    '								<li><a href="/starbucks/menu/drink_list?&CATE_CD=product_tea">티(티바나)</a></li>' +
    '								<li><a href="/starbucks/menu/drink_list?&CATE_CD=product_etc">기타 제조 음료</a></li>' +
    '								<li><a href="/starbucks/menu/drink_list?&CATE_CD=product_juice">스타벅스 주스(병음료)</a></li>' +
    '							</ul>' +
    '							<ul>' +
    '								<li class="gnb_sub_ttl"><a href="/starbucks/menu/food_list">푸드</a></li>' +
    '								<li><a href="/starbucks/menu/food_list?CATE_CD=product_bakery">브레드</a></li>' +
    '								<li><a href="/starbucks/menu/food_list?CATE_CD=product_cake">케이크</a></li>' +
    '								<li><a href="/starbucks/menu/food_list?CATE_CD=product_sandwich">샌드위치 & 샐러드</a></li>' +
    '								<li><a href="/starbucks/menu/food_list?CATE_CD=product_wram_food">따뜻한 푸드</a></li>' +
    '								<li><a href="/starbucks/menu/food_list?CATE_CD=product_fruit_yogurt">과일 & 요거트</a></li>' +
    '								<li><a href="/starbucks/menu/food_list?CATE_CD=product_snack">스낵 & 미니 디저트</a></li>' +
    '								<li><a href="/starbucks/menu/food_list?CATE_CD=product_icecream">아이스크림</a></li>' +
    //'								<li><a href="/starbucks/menu/food_list?CATE_CD=product_etc">기타 푸드</a></li>' +
    '							</ul>' +
    '							<ul>' +
    '								<li class="gnb_sub_ttl"><a href="/starbucks/menu/product_list">상품</a></li>' +
    '								<li><a href="/starbucks/menu/product_list?CATE_CD=product_mug">머그</a></li>' +
    '								<li><a href="/starbucks/menu/product_list?CATE_CD=product_glass">글라스</a></li>' +
    '								<li><a href="/starbucks/menu/product_list?CATE_CD=product_plastic">플라스틱 텀블러</a></li>' +
    '								<li><a href="/starbucks/menu/product_list?CATE_CD=product_stainless">스테인리스 텀블러</a></li>' +
    '								<li><a href="/starbucks/menu/product_list?CATE_CD=product_vacuum">보온병</a></li>' +
    '								<li><a href="/starbucks/menu/product_list?CATE_CD=product_accessories">액세서리</a></li>' +
    '								<li><a href="/starbucks/menu/product_list?CATE_CD=product_present">선물세트</a></li>' +
    '								<li><a href="/starbucks/menu/product_list?CATE_CD=product_coffee">커피 용품</a></li>' +
    '								<li><a href="/starbucks/menu/product_list?CATE_CD=product_teaPackage">패키지 티(티바나)</a></li>' +
    //'								<li><a href="/starbucks/menu/product_list?CATE_CD=product_planner">스타벅스 플래너</a></li>' + 20210602 삭제
    '							</ul>' +
    //'							<ul>' +
    //'								<li class="gnb_sub_ttl"><a href="/starbucks/menu/card_list">카드</a></li>' +
    //'								<li><a href="/starbucks/menu/card_list?CATE_CD=product_offline">실물카드</a></li>' +
    //'								<li><a href="/starbucks/menu/card_list?CATE_CD=product_egift">e-Gift 카드</a></li>' +
    //'							</ul>' +
    //'							<ul>' +
    //'								<li class="gnb_sub_ttl"><a href="/starbucks/wholecake/reserve_cake01">온라인 케익 예약</a></li>' +
    //'							</ul>' +
    //'							<ul>' +
    //'								<li class="gnb_sub_ttl"><a>메뉴 이야기</a></li>' +
    //'								<li><a href="/starbucks/store/store_nitro_coldbrew">나이트로 콜드브루</a></li>' +
    //'								<li><a href="/starbucks/store/store_coldbrew">콜드 브루</a></li>' +
    //'								<li><a href="/starbucks/menuStory/teavana">스타벅스 티바나</a></li>' +
    //'							</ul>' +
    '						</div>' +
    '					</div>' +
    '					<!-- 텍스쳐 bg -->' +
    '					<div class="gnb_sub_txbg">' +
    '						<div class="gnb_sub_tx_inner">' +
    '							<div class="gnb_sub_tx_left">' +
    //'								<h3><a href="#">나이트로 콜드 브루 <img alt="" src="//image.istarbucks.co.kr/common/img/common/icon_gnb_new.png"></a></h3>' +
    //'								<p class="gnb_sub_ex_txt">나이트로 커피 정통의 물결치듯 흘러내리는 캐스케이딩과 부드러운 크림을 경험하세요. </p>' +
    //'								<h3><a href="/starbucks/wholecake/reserve_cake01">스타벅스 케익 온라인 예약</a></h3>' +
    //'								<p class="gnb_sub_ex_txt">기념하고 싶은 날. 스타벅스 케익이 더 특별한 하루를 만들어 드립니다.</p>' +
    '							</div>' +
    '							<div class="gnb_sub_tx_right">' +
    '							</div>' +
    '						</div>' +
    '					</div>' +
    '					<!-- 텍스쳐 bg end -->' +
    '				</div>' +
    '			</li>' +
    '			<!-- MENU end -->' +
    '			<li class="gnb_nav03">' +
    '				<h2><a href="#">STORE</a></h2>' +
    '				<div class="gnb_sub_wrap">' +
    '					<div class="gnb_sub">' +
    '						<div class="gnb_sub_inner">' +
    '							<ul>' +
    '								<li class="gnb_sub_ttl"><a href="/starbucks/store/store_map">매장 찾기</a></li>' +
/*    '								<li><a href="/starbucks/store/store_map?disp=quick">퀵 검색</a></li>' +
    '								<li><a href="/starbucks/store/store_map?disp=locale">지역 검색</a></li>' +*/
    '							</ul>' +
    '							<ul>' +
    '								<li class="gnb_sub_ttl"><a href="/starbucks/store/store_drive">드라이브 스루 매장</a></li>' +
    '							</ul>' +
    '							<ul>' +
    '								<li class="gnb_sub_ttl"><a href="/starbucks/store/store_reserve">스타벅스 리저브™ 매장</a></li>' +
    '							</ul>' +
    '							<ul>' +
    '								<li class="gnb_sub_ttl"><a href="/starbucks/store/store_community">커뮤니티 스토어 매장</a></li>' +
    '							</ul>' +
    //'							<ul>' +
    //'								<li class="gnb_sub_ttl"><a>매장 이야기</a></li>' +
//    '								<li><a href="/starbucks/store/store_cheongdam">청담스타</a></li>' + 20210727 메뉴 비노출
    //'								<li><a href="/starbucks/store/store_star_field">티바나 바 매장</a></li>' +
//    '								<li><a href="/starbucks/store/store_park">파미에파크</a></li>' + 20210727 메뉴 비노출
    //'							</ul>' +
    '						</div>' +
    '					</div>' +
    '					<!-- 텍스쳐 bg -->' +
    '					<div class="gnb_sub_txbg">' +
    '						<div class="gnb_sub_tx_inner">' +
    '							<div class="gnb_sub_tx_left">' +
    '								<h3><a href="/starbucks/store/store_map">매장찾기</a></h3>' +
    '								<p class="gnb_sub_ex_txt">보다 빠르게 매장을 찾아보세요.</p>' +
//    '								<h3><a href="/starbucks/whats_new/newsView?cate=&seq=3572">이대R점 <img alt="" src="//image.istarbucks.co.kr/common/img/common/icon_gnb_new.png"></a></h3>' + 20210727 메뉴 비노출
//    '								<p class="gnb_sub_ex_txt">1호점 특화 MD와 티바나 티, 최고의 리저브 커피를 만나보세요.</p>' + 20210727 메뉴 비노출
    '							</div>' +
    '							<div class="gnb_sub_tx_right">' +
    '							</div>' +
    '						</div>' +
    '					</div>' +
    '					<!-- 텍스쳐 bg end -->' +
    '				</div>' +
    '			</li>' +
    //'			<li class="gnb_nav04">' +
    //'				<h2><a href="#">RESPONSIBILITY</a></h2>' +
    //'				<div class="gnb_sub_wrap">' +
    //'					<div class="gnb_sub">' +
    //'						<div class="gnb_sub_inner">' +
    //'							<ul>' +
    //'								<li class="gnb_sub_ttl"><a href="/starbucks/responsibility/starbucks_shared_planet">사회공헌 캠페인 소개</a></li>' + // 20210820 메뉴명 수정
    //'							</ul>' +
    //'							<ul>' +
    //'								<li class="gnb_sub_ttl"><a href="/starbucks/responsibility/hope_delivery">지역 사회 참여 활동</a></li>' +
    //'								<li><a href="/starbucks/responsibility/hope_delivery.do">희망배달 캠페인</a></li>' +
    //'								<li><a href="/starbucks/responsibility/talent_donation.do">재능기부 카페 소식</a></li>' +
    //'								<li><a href="/starbucks/responsibility/community_store.do">커뮤니티 스토어</a></li>' +
    //'								<li><a href="/starbucks/responsibility/youth_resource.do">청년 지원 프로그램</a></li>' + // 202107 메뉴명 수정
    //'								<li><a href="/starbucks/responsibility/our_agriculture.do">우리 농산물 사랑 캠페인</a></li>' +
    //'								<li><a href="/starbucks/responsibility/our_culture_defend.do">우리 문화 지키기</a></li>' +
    //'							</ul>' +
    //'							<ul>' +
    //'								<li class="gnb_sub_ttl"><a href="/starbucks/responsibility/environment.do">환경보호 활동</a></li>' +
    //'								<li><a href="/starbucks/responsibility/environment.do">친환경 활동</a></li>' + // 202107 메뉴명 수정
    //'								<li><a href="/starbucks/responsibility/no_disposable_cup.do">일회용 컵 없는 매장</a></li>' +
    //'								<li><a href="/starbucks/responsibility/bean_recycling.do">커피 원두 재활용</a></li>' +
    //'							</ul>' +
    //'							<ul>' +
    //'								<li class="gnb_sub_ttl"><a href="/starbucks/responsibility/ethically_sourcing.do">윤리 구매</a></li>' +
    //'								<li><a href="/starbucks/responsibility/ethically_sourcing.do">윤리적 원두 구매</a></li>' +
    //'								<li><a href="/starbucks/responsibility/fair_trade.do">공정무역 인증</a></li>' +
    //'								<li><a href="/starbucks/responsibility/farmer_support.do">커피 농가 지원 활동</a></li>' +
    //'							</ul>' +
    //'							<ul>' +
    //'								<li class="gnb_sub_ttl"><a href="/starbucks/responsibility/sp_ethical_management.do">글로벌 사회 공헌</a></li>' +
    //'								<li><a href="/starbucks/responsibility/sp_ethical_management.do">윤리경영 보고서</a></li>' +
    //'								<li><a href="/starbucks/responsibility/starbucks_foundation.do">스타벅스 재단</a></li>' +
    //'								<li><a href="/starbucks/responsibility/sp_global_month.do">지구촌 봉사의 달</a></li>' +
    //'							</ul>' +
    //'						</div>' +
    //'					</div>' +
    //'					<!-- 텍스쳐 bg -->' +
    //'					<div class="gnb_sub_txbg">' +
    //'						<div class="gnb_sub_tx_inner">' +
    //'							<div class="gnb_sub_tx_left">' +
    //'								<h3><a href="/starbucks/responsibility/bean_recycling.do">커피원두 재활용</a></h3>' + // 202107 텍스트 제거 및 영역 유지
    //'								<p class="gnb_sub_ex_txt">스타벅스 커피 원두를 재활용해 보세요.</p>' + // 202107 텍스트 제거 및 영역 유지
    //'							</div>' +
    //'							<div class="gnb_sub_tx_right">' +
    //'							</div>' +
    //'						</div>' +
    //'					</div>' +
    //'					<!-- 텍스쳐 bg end -->' +
    //'				</div>' +
    //'			</li>' +
    '			<li class="gnb_nav05">' +
    '				<h2><a href="#">STARBUCKS REWARDS</a></h2>' + // 스타벅스 리워드 수정
    '				<div class="gnb_sub_wrap">' +
    '					<div class="gnb_sub">' +
    '						<div class="gnb_sub_inner">' +
    '							<ul>' +
    '								<li class="gnb_sub_ttl"><a href="/starbucks/msr/msreward/about">스타벅스 리워드</a></li>' + // 스타벅스 리워드 수정
    '								<li><a href="/starbucks/msr/msreward/about">스타벅스 리워드 소개</a></li>' + // 스타벅스 리워드 수정
    '								<li><a href="/starbucks/msr/msreward/level_benefit">등급 및 혜택</a></li>' +
    '								<li><a href="/starbucks/msr/msreward/star">스타벅스 별</a></li>' +
    //'								<li><a href="/starbucks/community/faq?menu_cd=STB2703&cate=F17">자주 하는 질문</a></li>' + //20210809 수정
    '							</ul>' +
    //'							<ul>' +
    //'								<li class="gnb_sub_ttl"><a href="/starbucks/msr/scard/about.do">스타벅스 카드</a></li>' +
    //'								<li><a href="/starbucks/msr/scard/about.do">스타벅스 카드 소개</a></li>' +
    //'								<li><a href="/starbucks/msr/scard/scard_gallery.do">스타벅스 카드 갤러리</a></li>' +
    //'								<li><a href="/starbucks/msr/scard/register_inquiry.do">등록 및 조회</a></li>' +
    //'								<li><a href="/starbucks/msr/scard/charge_information.do">충전 및 이용안내</a></li>' +
    //'								<li><a href="/starbucks/msr/scard/lost_report.do">분실신고/환불신청</a></li>' +
    //'								<li><a href="/starbucks/community/faq.do?menu_cd=STB2703&cate=F05">자주 하는 질문</a></li>' +  //20210809 수정
    //'							</ul>' +
    '							<ul>' +
    '								<li class="gnb_sub_ttl"><a href="/starbucks/msr/sceGift/egift_information">스타벅스 e-Gift Card</a></li>' +
    '								<li><a href="/starbucks/msr/sceGift/egift_information">스타벅스 e-Gift Card 소개</a></li>' +
    '								<li><a href="/starbucks/msr/sceGift/msr_useguide">이용안내</a></li>' +
    '								<li><a href="/starbucks/msr/sceGift/gift_step1" required="interface/checkLogin">선물하기</a></li>' +
    //'								<li><a href="/starbucks/community/faq.do?menu_cd=STB2703&cate=F22">자주 하는 질문</a></li>' + //20210809 수정
    '							</ul>' +
    '						</div>' +
    '					</div>' +
    '					<!-- 텍스쳐 bg -->' +
    '					<div class="gnb_sub_txbg">' +
    '						<div class="gnb_sub_tx_inner">' +
    '							<div class="gnb_sub_tx_left">' +
    '								<h3><a href="#">스타벅스 카드 등록하기</a></h3>' +
    '								<p class="gnb_sub_ex_txt">카드 등록 후 리워드 서비스를 누리고 사용내역도 조회해보세요.</p>' +
    '							</div>' +
    '							<div class="gnb_sub_tx_right">' +
    '							</div>' +
    '						</div>' +
    '					</div>' +
    '					<!-- 텍스쳐 bg end -->' +
    '				</div>' +
    '			</li>' +
/*    '			<li class="gnb_nav06">' +
    '				<h2><a href="#">WHAT&#39;S NEW</a></h2>' +
    '				<div class="gnb_sub_wrap">' +
    '					<div class="gnb_sub">' +
    '						<div class="gnb_sub_inner">' +
    '							<ul>' +
    '								<li class="gnb_sub_ttl"><a href="/starbucks/whats_new/campaign_list.do">이벤트</a></li>' + //20210304 메뉴명변경
    '								<li><a href="/starbucks/whats_new/campaign_list.do">전체</a></li>' +
    '								<li><a href="/starbucks/whats_new/campaign_list.do?menu_cd=STB2812">스타벅스 카드</a></li>' +
    '								<li><a href="/starbucks/whats_new/campaign_list.do?menu_cd=STB2813">스타벅스 리워드</a></li>' + // 스타벅스 리워드 수정
    '								<li><a href="/starbucks/whats_new/campaign_list.do?menu_cd=STB2814">온라인</a></li>' ;
if (!(typeof eFrequencyPlannerYn === 'undefined') && eFrequencyPlannerYn == 'Y') {
	gnb +=
    '								<li><a href="/starbucks/whats_new/eFreq_gift.do">e-프리퀀시 증정품</a></li>' ; //20210423 메뉴명, 경로 수정
}
    gnb +=
    '							</ul>' +
    '							<ul>' +
    '								<li class="gnb_sub_ttl"><a href="/starbucks/whats_new/news_list.do">뉴스</a></li>' + //20210304 메뉴명변경
    '								<li><a href="/starbucks/whats_new/news_list.do">전체</a></li>' +
    '								<li><a href="/starbucks/whats_new/news_list.do?cate=N01">상품 출시</a></li>' +
    '								<li><a href="/starbucks/whats_new/news_list.do?cate=N02">스타벅스와 문화</a></li>' +
    '								<li><a href="/starbucks/whats_new/news_list.do?cate=N03">스타벅스 사회공헌</a></li>' +
    '								<li><a href="/starbucks/whats_new/news_list.do?cate=N04">스타벅스 카드출시</a></li>' +
    '							</ul>' +
    '							<ul>' +
    '								<li class="gnb_sub_ttl"><a href="/starbucks/whats_new/store_event_list.do">매장별 이벤트</a></li>' +
    '								<li><a href="/starbucks/whats_new/store_event_list.do">일반 매장</a></li>' +
    '								<li><a href="/starbucks/whats_new/store_event_list.do?search_date=1&tab=1">신규 매장</a></li>' +
    '							</ul>';
// 20180824 프리퀀시 SEQ캐싱 이슈 대응 by smno
if (!(typeof eFrequencyYn === 'undefined') && eFrequencyYn == 'Y') {
    gnb +=
    '							<ul>' +
    '								<li class="gnb_sub_ttl"><a href="/starbucks/eFreq/guide.do?promoSeq='+eFrequencySeq+'">e-프리퀀시</a></li>' +
    '								<li><a href="/starbucks/eFreq/guide.do?promoSeq='+eFrequencySeq+'">이용안내</a></li>' +
    '								<li><a href="/starbucks/eFreq/status.do?promoSeq='+eFrequencySeq+'" required="login">이용현황</a></li>' +
    '							</ul>';
}
    gnb +=
    '							<ul>' +
    '								<li class="gnb_sub_ttl"><a href="/starbucks/whats_new/notice_list.do">공지사항</a></li>' +
    '							</ul>' +
    '							<ul>' +
    '								<li class="gnb_sub_ttl"><a href="/starbucks/whats_new/wallpaper.do">월페이퍼</a></li>' +
    '							</ul>' +
    '						</div>' +
    '					</div>' +
    '					<!-- 텍스쳐 bg -->' +
    '					<div class="gnb_sub_txbg">' +
    '						<div class="gnb_sub_tx_inner">' +
    '							<div class="gnb_sub_tx_left">' +
    '								<h3><a href="/starbucks/whats_new/store_event_list.do">매장별 이벤트</a></h3>' +
    '								<p class="gnb_sub_ex_txt">스타벅스의 매장 이벤트 정보를 확인 하실 수 있습니다.</p>' +
    '								<h3><a href="/starbucks/whats_new/wallpaper.do">월페이퍼</a></h3>' +
    '								<p class="gnb_sub_ex_txt">매월 업데이트되는 월페이퍼(PC/Mobile)로 스타벅스를 더욱 가깝게 즐겨보세요!</p>' +
    '							</div>' +
    '							<div class="gnb_sub_tx_right">' +
    '							</div>' +
    '						</div>' +
    '					</div>' +
    '					<!-- 텍스쳐 bg end -->' +
    '				</div>' +
    '			</li>' +*/
    '		</ul>';
	$('.gnb_nav_inner, .sdown_gnb_nav_inner, .sub_gnb_nav_inner').append(function () {
    $(this).html(gnb);
  });
  var btnSearch = '<label for="totalSearch" class="a11y">통합검색</label><input id="totalSearch" placeholder="통합검색" type="text">';  // 접근성_20171106
  var searchInput = false;

  $('.sub_gnb_wrap_inner .btn_search').append(btnSearch);
  $('.sub_gnb_wrap_inner .btn_search a').click(function () {
    if (searchInput == false) {
      $('.sub_gnb_wrap_inner .btn_search input').fadeIn();
      searchInput = true;
    } else {
      //$('.btn_search input').fadeOut();
      searchInput = false;
    }
  });

  $("#totalSearch").unbind("keydown").keydown(function (e) {
    if (e.keyCode == 13) {
      e.preventDefault();
      if (pattern_check("#totalSearch", "검색어를  입력하세요.", "허용되지 않은 문자입니다.", getPattern('BASIC3')) == false) { return; }
      var search_word = encodeURI(encodeURIComponent($("#totalSearch").val()));
      location.href = "/search/search?search=" + search_word;
    }
  });



  $('.gnb_nav_inner > ul > li > h2 > a').bind('mouseover focus', function (e) {
    $('.gnb_nav_inner > ul > li > h2 > a').removeClass('on');
    $('.gnb_sub_wrap').hide();

    $(this).addClass('on');
    $(this).parent().next().stop(true, true).slideDown();

    e.preventDefault();
  });

  $('.gnb_nav_inner').bind('mouseleave', function () {
    $('.gnb_nav_inner > ul > li > h2 > a').removeClass('on');
    $('.gnb_sub_wrap').slideUp();
  });

  $('.sdown_gnb_nav_inner > ul > li > h2 > a').bind('mouseover focus', function (e) {
    $('.sdown_gnb_nav_inner > ul > li > h2 > a').removeClass('on');
    $('.gnb_sub_wrap').hide();

    $(this).addClass('on');
    $(this).parent().next().stop(true, true).slideDown();

    e.preventDefault();
  });

  $('.sdown_gnb_nav_inner').bind('mouseleave', function () {
    $('.sdown_gnb_nav_inner > ul > li > h2 > a').removeClass('on');
    $('.gnb_sub_wrap').slideUp();
  });

  $('.sub_gnb_nav_inner > ul > li > h2 > a').bind('mouseover focus', function (e) {
    $('.sub_gnb_nav_inner > ul > li > h2 > a').removeClass('on');
    $('.gnb_sub_wrap').hide();

    $(this).addClass('on');
    $(this).parent().next().stop(true, true).slideDown();

    e.preventDefault();
  });

  $('.sub_gnb_nav_inner').bind('mouseleave', function () {
    $('.sub_gnb_nav_inner > ul > li > h2 > a').removeClass('on');
    $('.gnb_sub_wrap').slideUp();
  });

  if (myWindow > 1100) {
    $('.gnb_sub_inner ul:nth-of-type(6)').css({ 'padding-top': '30px' });
    $('.gnb_sub_inner ul:nth-of-type(7)').css({ 'padding-top': '30px' });
    $('.gnb_sub_inner ul:nth-of-type(8)').css({ 'padding-top': '30px' });
  } else if (myWindow <= 1100 && myWindow > 960) {
    $('.gnb_sub_inner ul:nth-of-type(5)').css({ 'padding-top': '30px' });
    $('.gnb_sub_inner ul:nth-of-type(6)').css({ 'padding-top': '30px' });
    $('.gnb_sub_inner ul:nth-of-type(7)').css({ 'padding-top': '30px' });
    $('.gnb_sub_inner ul:nth-of-type(8)').css({ 'padding-top': '30px' });
  }

  if (myWindow > 1100) {
    $('.gnb_sub_inner ul:nth-of-type(6)').css({ 'clear': 'both' });
  } else {
    $('.gnb_sub_inner ul:nth-of-type(5)').css({ 'clear': 'both' });
  }
  /* gnb end */

});