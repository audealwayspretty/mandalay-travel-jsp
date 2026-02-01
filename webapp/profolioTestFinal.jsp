<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Three Expandable Cards</title>
  <style>
    .portfolio-section {
  	padding: 30px 40px;
  	background: linear-gradient(
    180deg,
    #f4f7f9 0%,
    #e6f4fa 100%
  	);
  	display: flex;
  	justify-content: center;
  	background: #f4f4f4;
}

   .portfolio-section .card-container {
      display: flex;
      flex-direction: column;
      gap: 24px; /* spacing between cards */
      width: 100%;
      max-width: 900px; /* control overall width */
    }

  	.portfoliocard {
      border-radius: 16px;
      overflow: hidden;
      background: linear-gradient(145deg, #005f82, #007BA7);
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
      transition: transform 0.25s ease;
    }

   .portfoliocard:hover {
      transform: translateY(-2px);
    }

    .portfoliocard img {
      width: 100%;
      height: 280px; /* larger rectangular image */
      object-fit: cover;
      display: block;
    }

    .portfoliocontent {
      max-height: 0;
      overflow: hidden;
      transition: max-height 0.4s ease, padding 0.4s ease;
      padding: 0 20px;
    }

    .portfoliocard.expanded .portfoliocontent {
      max-height: 500px;
      padding: 20px;
    }

	.portfoliotitle {
	color:#fff;
      font-size: 1.3rem;
      font-weight: bold;
    }

    .portfoliometa {
      font-size: 0.95rem;
      color: #94a3b8;
      margin-top: 6px;
    }

    .portfoliodescription {
      margin-top: 12px;
      font-size: 1rem;
      line-height: 1.5;
      color:#f4f4f4;
    }


    .portfoliodropdown {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 48px;
      background: linear-gradient(145deg, #005f82, #007BA7);
      cursor: pointer;
      border-top: 1px solid rgba(255, 255, 255, 0.1);
    }

    .portfolioarrow {
      width: 24px;
      height: 24px;
      transition: transform 0.3s ease;
    }

    .portfoliocard.expanded .portfolioarrow {
      transform: rotate(180deg);
    }
  </style>
</head>
<body>

<section id="portfolio" class="portfolio-section">
	<div class="card-container">
  <!-- Card 1 -->
  <div class="portfoliocard" onclick="toggleCard(this)">
    <img src="<%= request.getContextPath() %>/images/sanda2022.png">
    <div class="portfoliocontent">
      <div class="portfoliotitle">အာဏာသိမ်းပိုက်ခံရမှုဆန္ဒပြပွဲ</div>
      <div class="portfoliometa"> ၂၀၂၁ ခုနှစ် ဖေဖော်ဝါရီလ ၂ ရက်နေ့</div>
      <p class="portfoliodescription">တပ်မတော်သည် ဒီမိုကရေစီနည်းကျ ရွေးကောက်တင်မြှောက်ထားသော မြန်မာနိုင်ငံ၏ အာဏာရပါတီ အမျိုးသားဒီမိုကရေစီအဖွဲ့ချုပ်အား နိုင်ငံအုပ်ချုပ်သူနေရာမှ ဖယ်ရှားလိုက်သည့် ၂၀၂၁ ခုနှစ် ဖေဖော်ဝါရီလ ၁ ရက်နေ့နံနက်ခင်းတွင် မြန်မာနိုင်ငံ အာဏာသိမ်းမှု စတင်ခဲ့သည်။ ထိုနေ့ နံနက်အစောပိုင်းမှစ၍ တယ်လီဖုန်း ဆက်သွယ်ရေးလိုင်းများ ပြတ်တောက်သွားပြီး နံနက် ၈ နာရီ ခန့်တွင် ဝိုင်ဖိုင်ဝန်ဆောင်မှုများပါ ပြတ်တောက်သွားပြီးနောက် တစ်နိုင်ငံလုံး အဆက်အသွယ် ပြတ်တောက်သွားခဲ့သည်။</p>
    </div>
    <div class="portfoliodropdown">
      <svg class="portfolioarrow" viewBox="0 0 24 24" fill="none">
        <path d="M8 10l4 4 4-4" stroke="#cbd5e1" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
      </svg>
    </div>
  </div>

  <!-- Card 2 -->
  <div class="portfoliocard" onclick="toggleCard(this)">
    <img src="<%= request.getContextPath() %>/images/mee.png" alt="Frostspire Range" />
    <div class="portfoliocontent">
      <div class="portfoliotitle">ဦးကျားကြီးဝင်း မီးလောင်မှု</div>
      <div class="portfoliometa">၁၉၈၄ခုနှစ် မတ်လ၂၄ရက်နေ့</div>
      <p class="portfoliodescription">မန္တလေးမြို့ ၈၄လမ်းနှင့် ၃၅လမ်းထောင့်ရှိ ဦးကျားကြီးဝင်းရှိ အုန်းဆံဖတ်ထု၍ ကားအမိုးကူရှင်ချုပ်သော အိမ်မှ စတင်လောင်ကျွမ်းခဲ့သည်။။ဤမီးလောင်မှုမှာ မန္တလေးမြို့သမိုင်းတွင် ထင်ရှားသော ဖြစ်ရပ်တစ်ခုဖြစ်သည်။ ညနေ၃နာရီခန့်မှ စတင်လောင်ကျွမ်းခဲ့သော မီးမှာ ၇နာရီခန့်အကြာ မြောက်ဘက်သို့ဆက်လောင်သွားပြီး ၁၀နာရီခန့်တွင်မှ ကျုံးထိပ်အရောက်တွင် မီးညွန့်ကျိုးသွားခဲ့သည်။ဤဖြစ်စဉ်တွင် လူ​ပေါင်း ၂၂၀၀၀​ကျော် အိုးမဲ့အိမ်မဲ့ဖြစ်ခဲ့ရသည်။</p>
    </div>
    <div class="portfoliodropdown">
      <svg class="portfolioarrow" viewBox="0 0 24 24" fill="none">
        <path d="M8 10l4 4 4-4" stroke="#cbd5e1" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
      </svg>
    </div>
  </div>

  <!-- Card 3 -->
  <div class="portfoliocard" onclick="toggleCard(this)">
    <img src="<%= request.getContextPath() %>/images/yay.jpg" alt="Azurelake Trail" />
    <div class="portfoliocontent">
      <div class="portfoliotitle">မန္တလေးတိုင်း အမရပူရမြို့ ရွှေဂဲ ရေထိန်းတံခါး ကျိုးပေါက်</div>
      <div class="portfoliometa">ဇူလိုင် ၁၉၊ ၂၀၂၀</div>
      <p class="portfoliodescription">မန္တလေးတိုင်း၊ အမရပူရမြို့နယ်၊ ရွှေဂဲရေဆိုးထုတ်စက်ရုံအနီးက ဒီလ ၁၉ ရက်နေ့တုန်းက တာရိုးကျိုးပေါက်မှုကြောင့် အနီးအနား ရွာတွေထဲ ဧရာဝတီမြစ်ရေ ဝင်လာရာက ဒေသခံ ၁၄,၀၀၀ လောက် ဘေးလွတ်ရာ တိမ်းရှောင်ခဲ့ကြရတာပါ။မန္တလေးတိုင်းအတွင်း တာရိုးကျိုးပေါက်ရာက ရေဘေးသင့်ခဲ့တာ သီတင်းတစ်ပတ်ကျော်လာချိန်အထိ ရေဘေးသင့်သူ ၃,၀၀၀ လောက် ယာယီစခန်းတွေမှာ နေထိုင်နေရဆဲပါ။</p>
    </div>
    <div class="portfoliodropdown">
      <svg class="portfolioarrow" viewBox="0 0 24 24" fill="none">
        <path d="M8 10l4 4 4-4" stroke="#cbd5e1" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
      </svg>
    </div>
  </div>
    <!-- Card 4 -->
  <div class="portfoliocard" onclick="toggleCard(this)">
    <img src="<%= request.getContextPath() %>/images/sadapya.jpg">
    <div class="portfoliocontent">
      <div class="portfoliotitle">လျှပ်စစ်မီး ပုံမှန် ရဖို့ ဆန္ဒပြကြ</div>
      <div class="portfoliometa">၂၁ မေ ၂၀၁၂</div>
      <p class="portfoliodescription"> လျှပ်စစ်မီး ပုံမှန် ရဖို့ ဆန္ဒပြ တာသာ ဖြစ်တယ်၊ အာဏာပိုင်တွေ ဘက်က စောင့်ကြည့်တာမျိုး ရှိပေမယ့် ပြဿနာ မရှိဘူး။မြို့ခံ လူထု များသလို လုံခြုံရေးလဲ အပြည့် ရှိပါတယ်။</p>
    </div>
    <div class="portfoliodropdown">
      <svg class="portfolioarrow" viewBox="0 0 24 24" fill="none">
        <path d="M8 10l4 4 4-4" stroke="#cbd5e1" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
      </svg>
    </div>
  </div>
</div>
</section>

<script>
	function toggleCard(card) {
      card.classList.toggle('expanded');
    }
</script>

</body>
</html>