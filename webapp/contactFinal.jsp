<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body {
  margin: 0;
  font-family: 'Segoe UI', sans-serif;
  background-color: #f5f5f5;
}

.promo-section {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: space-between;
  padding: 60px 10%;
  background-color: #ffffff;
}

.promo-content {
  flex: 1;
  max-width: 600px;
}

.promo-content h2 {
  font-size: 1.5em;
  color: #007BA7;
  margin-bottom: 20px;
}

.promo-content p {
  font-size: 1.1em;
  color: #555;
  margin-bottom: 30px;
}

.appointment-button {
  display: inline-block;
  padding: 12px 25px;
  background-color: #007BA7;
  color: white;
  text-decoration: none;
  border-radius: 5px;
  font-weight: bold;
  transition: background-color 0.3s ease;
}

.appointment-button:hover {
  background-color:#005f7a;
}

.promo-image {
  flex: 1;
  text-align: center;
}

.promo-image img {
  width: 260px;
  height: 360px;
  object-fit: cover;
  border-radius: 100px;
  box-shadow: 0 4px 20px rgba(0,0,0,0.1);
}

.contact-card {
  flex: 1;
  width: 320px;
background: linear-gradient(145deg, #007BA7, #005f82);
  padding: 40px;
  border-radius: 16px;
  color: #fff;
  box-shadow: 0 10px 25px rgba(0,0,0,0.15);
}

.contact-card h3 {
  margin-top: 0;
  margin-bottom: 10px;
  font-size: 1.4em;
}

.contact-card p {
  font-size: 0.9em;
  margin-bottom: 15px;
  color: #dcdcdc;
}

.contact-card input,
.contact-card textarea {
  width: 90%;
  padding: 10px 12px;
  margin-bottom: 12px;
  border-radius: 10px;
  border: none;
  outline: none;
  background-color: rgba(255,255,255,0.15);
  color: #fff;
}

.contact-card input::placeholder,
.contact-card textarea::placeholder {
  color: #cccccc;
}

.contact-card button {
  width: 95%;
  padding: 10px;
  border-radius: 20px;
  border: none;
  background: linear-gradient(145deg, #00a8cc, #007BA7);;
  color: #fff;
  font-weight: bold;
  cursor: pointer;
  transition: background-color 0.3s ease;
}
  .contact-card button:hover {
  background: linear-gradient(145deg, #007BA7, #005f82);
  transform: translateY(-2px);
}
.success-toast {
  position: fixed;
  bottom: 30px;
  right: 30px;
  background: #2ecc71;
  color: #fff;
  padding: 12px 20px;
  border-radius: 8px;
  font-size: 0.95em;
  display: none;
  box-shadow: 0 8px 20px rgba(0,0,0,0.2);
}

.site-footer {
  background: linear-gradient(145deg, #007BA7, #005f82);
  color: #ffffff;
  padding-top: 50px;
  margin-top: 60px;
}

.footer-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  padding: 0 10% 40px;
  gap: 30px;
}

.footer-box {
  flex: 1;
  min-width: 250px;
}

.footer-box h3 {
  margin-bottom: 15px;
  font-size: 1.3em;
  border-bottom: 2px solid rgba(255,255,255,0.3);
  display: inline-block;
  padding-bottom: 5px;
}

.footer-box p {
  font-size: 0.95em;
  line-height: 1.6;
  color: #e6f4f9;
}

.footer-box ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

.footer-box ul li {
  margin-bottom: 10px;
}

.footer-box ul li a {
  color: #e6f4f9;
  text-decoration: none;
  transition: color 0.3s ease;
}

.footer-box ul li a:hover {
  color: #cceef9;
}

.footer-bottom {
  background-color: rgba(0,0,0,0.2);
  text-align: center;
  padding: 15px;
  font-size: 0.9em;
}

.contact-overlay {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0,0,0,0.5);
  display: none;
  justify-content: center;
  align-items: center;
  z-index: 1000;
}

.floating-contact-card {
  background: linear-gradient(145deg, #007BA7, #005f82);
  backdrop-filter: blur(30px);
  padding: 30px;
  width: 350px;
  border-radius: 20px;
  color: #fff;
  position: relative;
  box-shadow: 0 20px 40px rgba(0,0,0,0.3);
  animation: popIn 0.3s ease;
}

@keyframes popIn {
  from {
    transform: scale(0.8);
    opacity: 0;
  }
  to {
    transform: scale(1);
    opacity: 1;
  }
}

.floating-contact-card h3 {
  margin-top: 0;
}

.floating-contact-card input,
.floating-contact-card textarea {
  width: 100%;
  padding: 10px;
  margin-bottom: 12px;
  border-radius: 10px;
  border: none;
  outline: none;
}

.floating-contact-card button {
  width: 100%;
  padding: 10px;
  border-radius: 20px;
  border: none;
  background: linear-gradient(145deg, #00a8cc, #007BA7);
  color: #fff;
  font-weight: bold;
  cursor: pointer;
}

.close-btn {
  position: absolute;
  top: 12px;
  right: 15px;
  font-size: 22px;
  cursor: pointer;
}
/* Mobile: <= 768px (tablets + phones) */
@media (max-width: 768px) {
  .promo-section {
    flex-direction: column;
    padding: 40px 5%;
  }

  .promo-content,
  .promo-image,
  .contact-card {
    max-width: 100%;
    width: 100%;
    margin-bottom: 20px;
  }

  .promo-image img {
    width: 200px;
    height: 280px;
    border-radius: 50%;
  }
}

/* Very small screens: <= 480px */
@media (max-width: 480px) {
  .promo-section {
    padding: 20px 3%;
  }

  .promo-content h2 {
    font-size: 1.3em;
  }

  .promo-content p {
    font-size: 1em;
  }

  .contact-card {
    padding: 25px;
  }

  .promo-image img {
    width: 150px;
    height: 200px;
  }
}



</style>
</head>
<body>
<section class="promo-section" id="contact">
  <div class="promo-content">
    <h2>Meet the Developer</h2>
    <p>I am Nayi Myint Myat, a student of the CEIT Department, Mandalay Technological University (MTU).
This website, “Mandalay Travel”, is developed as a Java-based academic project. The purpose of this project is to present useful travel information about Mandalay,including Mandalay’s famous places, traditional food,music and cultural festivals.</p>
    <a href="javascript:void(0)" class="appointment-button" onclick="openContact()">Make Appointment</a>
  </div>

  <div class="promo-image">
    <img src="images/myphoto.jpg" alt="Medical professional">
  </div>
  
  <div class="contact-card">
  <h3>I would love to hear from you!</h3>
  <p>If you have any questions or suggestions, feel free to contact me.</p>

  <form action="mdyServlet" method="post">
    <input type="text" name="name" placeholder="Name" required>
     <input type="email" name ="email" placeholder="Email" required>
    <textarea placeholder="Message" name="message" rows="4"></textarea>
    <button type="submit">Submit</button>
  </form>
</div>
<div class="success-toast" id="successToast">
  ✅ Your message has been sent successfully!
</div>

</section>



<footer class="site-footer">
  <div class="footer-container">

    <!-- About Project -->
    <div class="footer-box">
      <h3>Mandalay Travel</h3>
      <p>
        Mandalay Travel is a Java-based academic project developed to provide
        useful information about Mandalay’s famous places, traditional food,
        music, and cultural festivals. This website is created for learning
        and educational purposes.
      </p>
    </div>

    <!-- Quick Links -->
    <div class="footer-box">
      <h3>Quick Links</h3>
      <ul>
        <li><a href="#home">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#history">History</a></li>
        <li><a href="#portfolio">Portfolio</a></li>
        <li><a href="#contact">Contact Us</a></li>
      </ul>
    </div>

    <!-- Developer Info -->
    <div class="footer-box">
      <h3>Developer</h3>
      <p><strong>Name:</strong> Nayi Myint Myat</p>
      <p><strong>University:</strong> Mandalay Technological University (MTU)</p>
      <p><strong>Department:</strong> CEIT</p>
      <p><strong>Project Type:</strong> Java Web Application</p>
    </div>

  </div>

  <!-- Footer Bottom -->
  <div class="footer-bottom">
    <p>
      © 2026 Mandalay Travel | Developed by Nayi Myint Myat | MTU CEIT
    </p>
  </div>
</footer>
<div class="contact-overlay" id="contactOverlay" onclick="closeContact()">
  <div class="floating-contact-card" onclick="event.stopPropagation()">
    <span class="close-btn" onclick="closeContact()">×</span>

    <h3>Contact Me</h3>
    <p>Send your message directly to my email.</p>

    <form onsubmit="sendEmail(event)">
      <input type="email" id="userEmail" placeholder="Your Email" required>
      <textarea id="userMessage" placeholder="Your Message" rows="4" required></textarea>
      <button type="submit">Send Message</button>
    </form>
  </div>
</div>

<%
  String success = request.getParameter("success");
  if ("true".equals(success)) {
%>
<script>
  document.getElementById("successToast").style.display = "block";
  setTimeout(() => {
    document.getElementById("successToast").style.display = "none";
  }, 3000);
</script>
<%
  }
%>

</body>
<script>
	function openContact() {
	  document.getElementById("contactOverlay").style.display = "flex";
	}
	
	function closeContact() {
	  document.getElementById("contactOverlay").style.display = "none";
	}
	
	function sendEmail(event) {
	  event.preventDefault();
	
	  const email = document.getElementById("userEmail").value;
	  const message = document.getElementById("userMessage").value;
	
	  const mailtoLink = `mailto:nayimyintmyat728@gmail.com
	    ?subject=Mandalay Travel Appointment
	    &body=From: ${email}%0D%0A%0D%0A${message}`;
	
	  window.location.href = mailtoLink;
	}
</script>

</html>