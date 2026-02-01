<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Mandalay Travel</title>
    <link href="https://fonts.googleapis.com/css2?family=Padauk:wght@400;700&display=swap" rel="stylesheet">
    
    <style>
    @charset "UTF-8";
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', sans-serif;
}

/* NAVBAR BASE */
.navbar {
    position: absolute;
    top: 0;
    width: 100%;
    padding: 20px 60px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    transition: all 0.4s ease;
    z-index: 1000;
}

/* Transparent on hero */
.navbar.transparent {
    background: transparent;
}

.logo {
	font-family: 'Padauk', 'Pyidaungsu', 'Noto Sans Myanmar', sans-serif;
	text-shadow: 0 2px 6px rgba(255,255,255,0.3);
    color: white;
    font-size: 22px;
    font-weight: bold;
}

/* NAV LINKS */
.nav-links {
    list-style: none;
    display: flex;
}

.nav-links li {
    margin-left: 25px;
}

.nav-links a {
    color: white;
    text-decoration: none;
    font-size: 15px;
    font-weight: 500;
}

/* SCROLLED NAVBAR */
.navbar.scrolled {
    position: fixed;
    background:#fff;
    box-shadow: 0 2px 10px rgba(0,0,0,0.1);
}

.navbar.scrolled .logo {
    color: #007BA7;
}

.navbar.scrolled .nav-links a {
    color: #007BA7;
}


/* HERO */
.hero {
    height: 100vh;
    background: url("images/mandalay.jpg") center/cover no-repeat;
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
}

.overlay {
    position: absolute;
    width: 100%;
    height: 100%;
    background: rgba(0,123,167,0.45);
}

/* HERO CONTENT */
.hero-content {
    position: relative;
    text-align: center;
    color: white;
    max-width: 800px;
    opacity: 0;
    transform: translateY(30px);
    animation: fadeUp 0.8s ease forwards;

}

.badge {
    border: 1px solid white;
    padding: 6px 16px;
    border-radius: 20px;
    font-size: 13px;
    cursor: pointer;
    animation-delay: 0.2s;
}
.badge:hover {
    background: white;
    color: #007BA7;
}
.badge-link {
    text-decoration: none;
    color: inherit;
}

.hero-content h1 {
    font-size: 70px;
    margin-top: 5px;
    font-family: serif;
     animation-delay: 0.4s;
}

.hero-content h2 {
    font-size: 52px;
    color: white;
    font-style: italic;
     animation-delay: 0.6s;
}

.hero-content p {
    margin: 20px 0;
    font-size: 16px;
    line-height: 1.6;
    animation-delay: 0.8s;
}

/* BUTTONS */
.buttonss {
    margin-top: 30px;
    animation-delay: 1s;
}
@keyframes fadeUp {
    to {
        opacity: 1;
        transform: translateY(0);
    }
}
.secondary {
    background: transparent;
    border: 2px solid white;
    color: white;
    padding: 6px 16px;
    font-size: 15px;
    border-radius: 30px;
    cursor: pointer;
    animation-delay: 0.2s;
}

.secondary:hover {
    background: white;
    color: #007BA7;
}

/* GALLERY SECTION */
.gallery-section {
	background-color: white;
     padding: 40px;
    
}

.gallery-container { 
	display: flex;
	
	gap: 40px; 
	align-items:center; 
	max-width: 1200px;
	margin: 0 auto;
 }
 
 .gallery-image {
 	width: 100%;
   max-width:500px;
   height: 500px;          /* control visible height */
    overflow: hidden;       /* hides unwanted parts */
    border-radius: 16px;
    flex: 1;
}
.gallery-image,
.gallery-content {
    position: relative;
    z-index: 1;
}


.gallery-image img {
  	width: 100%;
    height: 100%;       /* Set a fixed height so the layout stays consistent */
    object-fit: cover;
    aspect-ratio: 3 / 2;
    border-radius: 20px;
    display: block;
}

/* TEXT SIDE */
.gallery-content {
 background: white;
 flex: 2;

}

.gallery-content h2 {
    color: #007BA7;
    font-size: 32px;
    margin-bottom: 15px;
}

.gallery-content p {
    font-size: 16px;
    line-height: 1.7;
    color: #444;
}

.gallery-buttons {
	margin-left: 1100px;
    margin-top: 25px;
}

.gallery-buttons button {
    background: #007BA7;
    color: white;
    border: none;
    padding: 10px 22px;
    border-radius: 25px;
    cursor: pointer;
    margin-right: 10px;
}
@media (max-width: 900px) {
    .gallery-container {
         grid-template-columns: 1fr;
    }
}






/* Hidden State */
.hidden {
    display: none;
}

/* Back Button */
.back-btn {
    margin-bottom: 30px;
    background: #007BA7;
    color: white;
    border: none;
    padding: 10px 24px;
    font-size: 14px;
    border-radius: 30px;
    cursor: pointer;
    transition: background 0.3s;
}

.back-btn:hover {
    background: #005f82;
}

/* Responsive */
@media (max-width: 768px) {
    .about-section {
        padding: 60px 25px;
    }
}

 .about-section{
      background: linear-gradient(#f4f4f4, #007BA7);
      color: #fff;
      margin: 0;
      padding: 20px;
    }

    h1 {
      text-align: center;
      margin-bottom: 20px;
    }

    .buttons {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 20px;
      margin-bottom: 30px;
    }

    .category-card {
      background: rgba(255, 255, 255, 0.1);
      box-shadow: 0 20px 50px rgba(0,0,0,0.25);
      backdrop-filter: blur(10px);
      border-radius: 12px;
      overflow: hidden;
      text-align: center;
      padding: 15px;
      transition: transform 0.3s;
    }

    .category-card:hover {
      transform: scale(1.05);
    }

    .category-card img {
      width: 100%;
      height: 150px;
      object-fit: cover;
      border-radius: 8px;
    }

    .glass-btn {
      margin-top: 10px;
      padding: 10px 20px;
      border-radius: 12px;
      border: none;
      cursor: pointer;
      font-size: 16px;
      color: #fff;
      background: rgba(255, 255, 255, 0.2);
      backdrop-filter: blur(10px);
      transition: 0.3s;
    }

    .glass-btn:hover {
      background: rgba(255, 255, 255, 0.4);
    }

    .cards {
      display: none;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 20px;
    }

    .cards.active {
      display: grid;
    }

    .card {
      background: rgba(255, 255, 255, 0.1);
      backdrop-filter: blur(10px);
      border-radius: 12px;
      overflow: hidden;
      text-align: center;
      padding: 10px;
      transition: transform 0.3s;
    }

    .card:hover {
      transform: scale(1.05);
    }

    .card img {
      width: 100%;
      height: 150px;
      object-fit: cover;
      border-radius: 8px;
    }

    .card h3 {
      margin: 10px 0 0;
    }
    .music-cards {
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
}

.video-card {
  border-radius: 16px;
  overflow: hidden;
  background: rgba(255, 255, 255, 0.1);
  backdrop-filter: blur(10px);
  box-shadow: 0 20px 40px rgba(0,0,0,0.3);
  transition: transform 0.3s;
}

.video-card:hover {
  transform: scale(1.05);
}

.video-card iframe {
  width: 100%;
  height: 200px;
  border: none;
}
/* History */
	.hisb {
	  margin: 0;
	  background: #f4f4f4;
	  min-height: 100vh;
	  display: flex;
	  align-items: center;   /* vertically center */
	  justify-content: flex-start; /* push content to the left */
	   padding: 120px 40px;/* add some breathing room */
	}
	
	.history-card {
	  position: relative;
	  width: 1000px;
	  height: 520px;
	  display: flex;
	  align-items: center;
	  margin-left: 0;        /* ensure it starts at left */
	}


    /* Right panel (larger) */
    .history-content {
      flex: 1.3;
      background: #007BA7;
      color: #fff;
      border-radius: 18px;
      padding: 64px 72px;
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.18);
      position: relative;
      z-index: 1;
    }

    .history-content h1 {
      margin: 0 0 28px;
      font-size: 42px;
      font-weight: 700;
    }

    .list {
      display: grid;
      gap: 18px;
    }

    .item {
      position: relative;
      padding-left: 34px;
      line-height: 1.55;
      font-size: 17px;
      max-width: 720px;
    }

    .item::before {
      content: "→";
      position: absolute;
      left: 0;
      top: 0;
      color: #fff;
      font-weight: 700;
      font-size: 18px;
      transform: translateY(2px);
    }

    /* Left image panel overlaps only partly */
    .history-image {
      position: absolute;
      left: 0;
      top: 50%;
      transform: translateY(-50%) translateX(860px); /* smaller push */
      width: 380px;   /* narrower */
      height: 400px;  /* shorter */
      border-radius: 16px;
      overflow: hidden;
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.18);
      z-index: 2;
       background: url("images/King.jpg") center/cover no-repeat; /* replace with your image */
    }

    @media (max-width: 860px) {
      .history-card {
        flex-direction: column;
        width: 92vw;
        height: auto;
      }
      .history-image{
        position: relative;
        transform: none;
        width: 100%;
        height: 42vh;
        margin-bottom: 20px;
      }
      .history-content{
        padding: 32px 26px;
      }
      .panel-right h1 { font-size: 32px; }
      .item { font-size: 16px; }
    }

    
    </style>
</head>

<body>

<header class="navbar" id="navbar">
    <div class="logo">အုတ်ကျစ်ကျော်အေး မန္တလေး</div>

    <ul class="nav-links">
        <li><a href="#home">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#portfolio">Portfolio</a></li>
        <li><a href="#history">History</a></li>
        <li><a href="#contact">Contact Us</a></li>
    </ul>
</header>

<!-- Hero Section -->
<section class="hero" id="home">
    <div class="overlay"></div>

    <div class="hero-content">
        <a href="#about" class="badge-link">
  			<span class="badge">EXPLORE MANDALAY</span>
		</a>

        <h1>Mandalay's</h1>
        <h2>Heartbroken Memories</h2>

        <p>
            Discover the ancient royal capital, where timeless pagodas
            meet modern spirit. Your journey into Burmese culture starts here.
        </p>

        <div class="buttonss">
            
	         <button class="secondary" onclick="location.href='#gallery'">
	    			View Gallery
			</button>

        </div>
    </div>
</section>

<!-- GALLERY SECTION -->
<section id="gallery" class="gallery-section">
    <div class="gallery-container">

        <!-- IMAGE (2/3) -->
        <div class="gallery-image">
            <img id="galleryImg" alt="Mandalay">
        </div>

        <!-- CONTENT (1/3) -->
        <div class="gallery-content">
            <h2 id="galleryTitle"></h2>
            <p id="galleryText"></p>      
        </div>
        
        

    </div>
    
    <div class="gallery-buttons">
                <button onclick="prevSlide()">❮ Prev</button>
                <button onclick="nextSlide()">Next ❯</button>
     </div>
</section>

<section id="about" class="about-section">
	<h1>About Section</h1>
	
	  <!-- Category selector cards -->
	  <div class="buttons">
	    <div class="category-card">
	      <img src="./images/food.jpg" alt="Food">
	      <button class="glass-btn" onclick="showCards('food')">ဒေသအစားအစာ</button>
	    </div>
	    <div class="category-card">
	      <img src="./images/zayat.jpg" alt="Places">
	      <button class="glass-btn" onclick="showCards('places')">အထင်ကရ နေရာ</button>
	    </div>
	    <div class="category-card">
	      <img src="./images/festival.jpg" alt="Festival">
	      <button class="glass-btn" onclick="showCards('festival')">ရိုးရာပွဲတော်</button>
	    </div>
	    <div class="category-card">
	      <img src="./images/musicfi.jpg" alt="Music">
	      <button class="glass-btn" onclick="showCards('music')">တေးသီချင်း</button>
	    </div>
	  </div>
	
	  <!-- Food Cards -->
	  <div id="food" class="cards">
		<div class="card">
		    <img src="./images/food2.jpg" alt="Sushi">
		    <h3>မန္တလေးမုန့်တီ</h3>
		</div>
	    <div class="card">
	      <img src="./images/food6.jpg" alt="Pizza">
	      <h3>နန်းကြီးသုပ်</h3>
	    </div>    
	    <div class="card">
	      <img src="./images/myint.jpg" alt="Sushi">
	      <h3>ထိုးမုန့်</h3>
	    </div>
	    <div class="card">
	      <img src="./images/food4.jpg" alt="Sushi">
	      <h3>ကြိတ်မုန့်</h3>
	    </div>
	    <div class="card">
	      <img src="./images/food5.jpg" alt="Sushi">
	      <h3>မန္တလေးဗထူးမြီးရှည်</h3>
	    </div>
	    <div class="card">
	      <img src="./images/food7.jpg" alt="Sushi">
	      <h3>မန္တလေးထမင်းပေါင်း</h3>
	    </div>
	     <div class="card">
		    <img src="./images/foodA.jpg" alt="Sushi">
		    <h3>မလိုင်ပေါက်စီ</h3>
		</div>
	    <div class="card">
	      <img src="./images/foodB.jpg" alt="Pizza">
	      <h3>ဗေဒါရွှေကြာ</h3>
	    </div>    
	    <div class="card">
	      <img src="./images/foodC.jpg" alt="Sushi">
	      <h3>ဝက်ဆီဖတ် မုန့်ပျစ်သလက်</h3>
	    </div>
	    <div class="card">
	      <img src="./images/foodD.jpg" alt="Sushi">
	      <h3>မန္တလေးပဲကြော်</h3>
	    </div>
	    <div class="card">
	      <img src="./images/foodF.jpg" alt="Sushi">
	      <h3>ထပ်တရာ</h3>
	    </div>
	    <div class="card">
	      <img src="./images/foodE.jpg" alt="Sushi">
	      <h3>ဖက်ထမင်း</h3>
	    </div>
	  </div>
	
	  <!-- Places Cards -->
	  <div id="places" class="cards"> 
	    <div class="card">
	      <img src="./images/Buddha.JPG" alt="Beach">
	      <h3>မဟာမုနိ ရုပ်ရှင်တော်မြတ်ကြီး</h3>
	    </div>
	    <div class="card">
	      <img src="./images/EinDawYar.jpg" alt="Beach">
	      <h3>မဟာလောကရံသီ အိမ်တော်ရာစေတီ</h3>
	    </div>
	    <div class="card">
	      <img src="./images/hill.jpg" alt="Beach">
	      <h3>မန္တလေးတောင်</h3>
	    </div>
	    <div class="card">
	      <img src="./images/khuthotaw.jpg" alt="Beach">
	      <h3>ကုသိုလ်တော်</h3>
	    </div>
	    <div class="card">
	      <img src="./images/sadamuni.jpg" alt="Beach">
	      <h3>စန္ဒာမုနိဘုရား</h3>
	    </div>
	    <div class="card">
	      <img src="./images/sandamu.jpg" alt="Beach">
	      <h3>မဟာစန္ဒာမုနိဘုရား</h3>
	    </div>
	    <div class="card">
	      <img src="./images/Palace.png" alt="Beach">
	      <h3>မန္တလေးနန်းတွင်း</h3>
	    </div>
	    <div class="card">
	      <img src="./images/ATMS.jpg" alt="">
	      <h3>မဟာအတုလဝေယန်ကျောင်းတော်ကြီး(အတုမရှိကျောင်း)</h3>
	    </div>
	    <div class="card">
	      <img src="./images/SKG.jpg" alt="">
	      <h3>ရွှေနန်းတော်ကျောင်း(ရွှေကျောင်း) </h3>
	    </div>
	    <div class="card">
	      <img src="./images/barrka.jpg" alt="Beach">
	      <h3>မဟာဝေယံဘုံသာ ဗားကရာကျောင်းတော်ကြီး</h3>
	    </div>
	    <div class="card">
	      <img src="./images/ubein.jpg" alt="Beach">
	      <h3>ဦးပိန်တံတား</h3>
	    </div>
	    <div class="card">
	      <img src="./images/ZayCho.jpg" alt="Beach">
	      <h3>မန္တလေးဈေးချိုနာရီစင်</h3>
	    </div>
	   
	  </div>
	
	  <!-- Festival Cards -->
	  <div id="festival" class="cards">
	    <div class="card">
	      <img src="./images/ohh.jpg" alt="Diwali">
	      <h3>အိုးဘို၊ရွှေကျင်ရပ်ကွက်တွင်ကျင်းပသောအိုးပုတ်ပွဲ </h3>
	    </div>
	    <div class="card">
	      <img src="./images/ktg1.jpg" alt="Diwali">
	      <h3>ကျောက်တော်ကြီးဘုရားပွဲ</h3>
	    </div>
	    <div class="card">
	      <img src="./images/nat1.jpg" alt="Christmas">
	      <h3>အမရပူရမြို့၊ ငယ်တိုးကျေးရွာတွင် ကျင်းပသော ရတနာ့ဂူနတ်ပွဲ</h3>
	    </div>
	  </div>
	
	  <!-- Music Cards -->
	  <!-- Music Cards -->
<div id="music" class="cards music-cards">
	
  <div class="video-card">
    <iframe src="https://www.youtube.com/embed/XFYOPRIeM5I?list=RDXFYOPRIeM5I" >
    </iframe>
  </div>

  <div class="video-card">
    <iframe src="https://www.youtube.com/embed/cO80EKrcur4?list=RDcO80EKrcur4" >
    </iframe>
  </div>

  <div class="video-card">
    <iframe  src="https://www.youtube.com/embed/BkvHM4eT7Fw?list=RDBkvHM4eT7Fw"></iframe>
  </div>
  
  <div class="video-card">
    <iframe src="https://www.youtube.com/embed/rK1qAndpYqE?list=RDrK1qAndpYqE">
    </iframe>
  </div>

</div>

</section>

<jsp:include page="profolioTestFinal.jsp"/>
<section class="hisb" id="history">
	 <div class="history-card">
    <div class="history-image"></div>

    <div class="history-content">
      <h1>မန္တလေးမြို့သမိုင်းကြောင်း</h1>
      <div class="list">
        <p class="item">မန္တလေးမြို့ကို ခရစ်နှစ် ၁၈၅၇ ခုနှစ်တွင် ကုန်းဘောင်မင်းဆက် (၁၁) ဆက်တွင် ဒဿမ​မြောက် ဖြစ်သော မြန်မာဘုရင် မင်းတုန်းမင်း မှစတင်တည်ထောင်ခဲ့ခြင်း ဖြစ်သည်။</p>
        <p class="item">မန္တလေးမြို့ စတင်တည်ကာစအချိန်တွင် မန္တလေးအရပ်ကို ထီးပေါင်းကားဟု ခေါ်ဆိုနေကြသည်။ မြို့တော်၏ တရားဝင်အမည်မှာ ရတနာပုံဖြစ်သည်။</p>
        <p class="item">မန္တလေးဆိုသည့် စကားလုံးမှာ မဏ္ဍလဟူသော စကားမှ ဆင်းသက်လာကာ ညီညာပြန့်ပြူးသောလွင်ပြင်ဟု အဓိပ္ပာယ်ရသည်။ခေတ်ကာလ ကြာလာသောအခါ မဏ္ဍလေး၊ မန္တလေး စသည်ဖြင့်ပြောင်းလာခဲ့သည်။</p>
        <p class="item">မန္တလေးမြို့တော်သည် မြန်မာနိုင်ငံ၏ နောက်ဆုံးမင်းနေပြည်တော် ဖြစ်ခဲ့သည့်အလျောက် မြန်မာဟန်စစ်စစ်ယဉ်ကျေးမှု အမွေအနှစ်များ ဗုဒ္ဓယဉ်ကျေးမှုနဲ့ အနုပညာတို့ သင်ကြားရာဗဟိုချက် အချက်အချာဌာန တစ်ခုလည်းဖြစ်သည်။</p>
      </div>
    </div>
  </div>
</section>

<jsp:include page="contactFinal.jsp"/>
</body>
<script>
    const navbar = document.getElementById("navbar");

    // Start transparent
    navbar.classList.add("transparent");

    window.addEventListener("scroll", () => {
        if (window.scrollY > 80) {
            navbar.classList.remove("transparent");
            navbar.classList.add("scrolled");
        } else {
            navbar.classList.add("transparent");
            navbar.classList.remove("scrolled");
        }
    });
    text: `မန္တလေးမြို့ရှိ သမိုင်းဝင် ယဉ်ကျေးမှုအမွေအနှစ်တစ်ခုဖြစ်သော မန္တလေးကျုံးသည်
    	ငလျင်ဒဏ်ကြောင့် ကျုံးနံရံနှင့် ပတ်ဝန်းကျင်အချို့တွင် ထိခိုက်ပျက်စီးမှုများ ဖြစ်ပွားခဲ့သည်။
    	ယင်းပျက်စီးမှုများကြောင့် လုံခြုံရေးနှင့် ထိန်းသိမ်းရေးအရေးပါမှုကို ထပ်မံသတိပြုစေခဲ့သည်။`

   
    const slides = [
        {
            img: "images/goodkyone2.jpg",
            title: "ငလျင်ဒဏ်ကြောင့် ထိခိုက်ပျက်စီးခဲ့သော သမိုင်းဝင် မန္တလေးကျုံး။",
            text: `မန္တလေးမြို့ရှိ သမိုင်းဝင် ယဉ်ကျေးမှုအမွေအနှစ်တစ်ခုဖြစ်သော မန္တလေးကျုံးသည်
            	ငလျင်ဒဏ်ကြောင့် ကျုံးနံရံနှင့် ပတ်ဝန်းကျင်အချို့တွင် ထိခိုက်ပျက်စီးမှုများ ဖြစ်ပွားခဲ့သည်။
            	ယင်းပျက်စီးမှုများကြောင့် လုံခြုံရေးနှင့် ထိန်းသိမ်းရေးအရေးပါမှုကို ထပ်မံသတိပြုစေခဲ့သည်။`
        		
        },
        {
            img: "images/goodwhite.jpg",
            title: "ငလျင်ဒဏ်ကြောင့် ထိခိုက်ပျက်စီးသွားသော မြသိန်းတန်စေတီ။",
            text: `မန္တလေးမြို့ရှိ သမိုင်းဝင် သာသနာရေးအမွေအနှစ်တစ်ခုဖြစ်သော
            	မြသိန်းတန်စေတီသည် ငလျင်ဒဏ်ကြောင့် စေတီတော်အခြေခံနှင့် ပတ်ဝန်းကျင်အချို့တွင်
            	ထိခိုက်ပျက်စီးမှုများ ဖြစ်ပေါ်ခဲ့သည်။`
        },
        {
            img: "images/finalmahr.jpg",
            title: "မဟာမြတ်မုနိဘုရား ပျက်စီးမှု အခြေအနေ",
            text: `ဤပုံတွင် မန္တလေးမြို့ရှိ မဟာမြတ်မုနိဘုရား၏ ငလျင်ကြောင့် ဖြစ်ပေါ်လာသော
            	ထိခိုက်ပျက်စီးမှုအခြေအနေကို ဖော်ပြထားသည်။`
            
        },
        {
            img: "images/two.jpg",
            title: "ခြင်္သေ့ကြီးနှစ်ကောင် ပျက်စီးမှု",
            text: `ယဉ်ကျေးမှုနှင့် သာသနာအမွေအနှစ်ဖြစ်သည့် ဘုရား၊ စေတီများလည်း မန္တလေး ငလျင်ဒဏ်ကြောင့် ထိခိုက်ပျက်စီးမှုများ ဖြစ်ပွားခဲ့သည်။
            	ထိန်းသိမ်းပြုပြင်ရေးလုပ်ငန်းများကို အရေးပေါ် လုပ်ဆောင်ရန် လိုအပ်လာခဲ့သည်။.`
        },
        {
            img: "images/shortgreatwall.jpg",
            title: "Great Wall Hotelထိခိုက်ပျက်စီးမှု",
            text: `ငလျင်ဒဏ်ကြောင့် အဆောက်အဦးဖွဲ့စည်းပုံ၏ အစိတ်အပိုင်းအချို့တွင်
            	ထိခိုက်ပျက်စီးမှုများ ဖြစ်ပေါ်ခဲ့သည်။ဤပုံတွင် မန္တလေးမြို့ရှိ Great Wall Hotel ၏
            	ငလျင်ကြောင့် ဖြစ်ပေါ်လာသော အဆောက်အဦးပျက်စီးမှုအခြေအနေ ယခင် နှင့် ယခု ပုံကို နှိင်းယှဉ်ဖော်ပြထားသည်။`
        },
        {
            img: "images/sky1new.jpg",
            title: "ပြိုကျပျက်စီးခဲ့သောSky Villa",
            text: "မတ်လ ၂၈ရက်က လှုပ်ခတ်ခဲ့တဲ့ ငလျင်ကြောင့် မန္တလေးမြို၊ အောင်မြေသာစံမြိုနယ်၊ ရေစစ်ကန်အနီးရှိ ၁၁ ထပ်အမြင့် Sky Villa ကွန်ဒို အဆောက်အဦး ပြိုကျကာ လူရာနဲ့ချီ သေဆုံးခဲ့ပါတယ်။"
        },
        {
            img: "images/newhome.jpg",
            title: "ငလျင်ကြောင့်စောင်းသွားသောနေအိမ်",
            text: "မန္တလေး ငလျင်ကြောင့် လူနေအဆောက်အဦးများ ပြင်းထန်စွာ ပျက်စီးခဲ့ရသည်။အချို့သော အဆောက်အဦးများမှာ လုံခြုံစွာ အသုံးပြုနိုင်ခြင်းမရှိတော့သည့် အခြေအနေသို့ ရောက်ရှိခဲ့သည်။"
        }
    ];

    let current = 0;

    function showSlide(index) {
        document.getElementById("galleryImg").src = slides[index].img;
        document.getElementById("galleryTitle").innerText = slides[index].title;
        document.getElementById("galleryText").innerText = slides[index].text;
    }

    function nextSlide() {
        current = (current + 1) % slides.length;
        showSlide(current);
    }

    function prevSlide() {
        current = (current - 1 + slides.length) % slides.length;
        showSlide(current);
    }

    showSlide(0);
    

    function showCards(category) {
      const allCards = document.querySelectorAll('.cards');
      allCards.forEach(card => card.classList.remove('active'));
      document.getElementById(category).classList.add('active');
      // Scroll smoothly to the revealed section
      document.getElementById(category).scrollIntoView({ behavior: 'smooth' });
    }
	

    function toggleCard(card) {
      card.classList.toggle('expanded');
    }

    
 

    
</script>

</html>
