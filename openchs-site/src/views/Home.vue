<script setup>
  import { ref } from "vue";

  const formData = ref({
    name: "",
    email: "",
    message: "",
  });

  const submitForm = () => {
    alert(`Thank you, ${formData.value.name}! We will get back to you soon.`);
  };
</script>

<template>
  <div class="container">
    <!-- Hero Section -->
    <header class="hero">
      <div class="hero-overlay">
        <h1>Revolutionizing Child Protection with Smart Case Management</h1>
        <p>
          Empowering child protection agencies with real-time reporting, automated workflows, and multi-channel support.
        </p>
        <a href="#contact" class="cta-button">Get in Touch</a>
      </div>
    </header>

    <!-- Features Section -->
    <section class="feature">
      <img src="https://via.placeholder.com/600x350" alt="Case Management" class="feature-img" />
      <div class="feature-text">
        <h2>Comprehensive Case Management</h2>
        <p>From intake to resolution, OpenCHS ensures efficient case tracking, automated workflows, and real-time
          updates.</p>
      </div>
    </section>

    <section class="feature reverse">
      <div class="feature-text">
        <h2>Advanced Call Handling & Multi-Channel Support</h2>
        <p>Seamlessly integrates with voice, SMS, WhatsApp, U-Report, and web platforms to ensure real-time case
          resolution.</p>
      </div>
      <img src="https://via.placeholder.com/600x350" alt="Multi-Channel Support" class="feature-img" />
    </section>

    <section class="feature">
      <img src="https://via.placeholder.com/600x350" alt="Real-time Analytics" class="feature-img" />
      <div class="feature-text">
        <h2>Real-Time Data Analytics & Insightful Reporting</h2>
        <p>Monitor trends, track performance, and make data-driven decisions with dynamic dashboards and reports.</p>
      </div>
    </section>

    <section class="feature reverse">
      <div class="feature-text">
        <h2>Secure & Scalable API Integrations</h2>
        <p>Connect seamlessly with registries, healthcare, and law enforcement for holistic child protection.</p>
      </div>
      <img src="https://via.placeholder.com/600x350" alt="API Integrations" class="feature-img" />
    </section>

    <!-- Call to Action -->
    <section class="cta">
      <h2>Join Our Community</h2>
      <p>Be part of a growing network dedicated to child protection.</p>
      <a href="#contact" class="cta-button">Contact Us</a>
    </section>

    <!-- Contact Form -->
    <section id="contact" class="contact">
      <h2>Contact Us</h2>
      <form @submit.prevent="submitForm">
        <label for="name">Name:</label>
        <input id="name" v-model="formData.name" type="text" class="input" required />

        <label for="email">Email:</label>
        <input id="email" v-model="formData.email" type="email" class="input" required />

        <label for="message">Message:</label>
        <textarea id="message" v-model="formData.message" class="textarea"></textarea>

        <button type="submit" class="cta-button">Submit</button>
      </form>
    </section>

    <!-- Footer -->
    <footer class="footer">
      <p>© 2025 Bitz IT Consulting Ltd. All Rights Reserved.</p>
    </footer>
  </div>
</template>

<style>

  /* General Styles */
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f8f9fa;
    color: #333;
  }

  /* Container */
  .container {
    width: 100%;
    text-align: center;
  }

  /* Hero Section */
  .hero {
    background: url("https://via.placeholder.com/1500x700") no-repeat center center/cover;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    position: relative;
  }

  .hero-overlay {
    background: rgba(0, 0, 0, 0.6);
    padding: 2rem;
    color: white;
    border-radius: 10px;
    max-width: 80%;
  }

  .hero h1 {
    font-size: 2.5rem;
    margin-bottom: 0.5rem;
  }

  .hero p {
    font-size: 1.2rem;
    margin-bottom: 1rem;
  }

  .cta-button {
    background-color: #007bff;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    text-decoration: none;
    font-size: 1rem;
  }

  .cta-button:hover {
    background-color: #0056b3;
  }

  /* Features Section */
  .feature {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 50px 10%;
    text-align: left;
  }

  .reverse {
    flex-direction: row-reverse;
  }

  .feature-img {
    width: 50%;
    border-radius: 10px;
  }

  .feature-text {
    width: 50%;
    padding: 20px;
  }

  .feature-text h2 {
    color: #007bff;
  }

  /* Call to Action Section */
  .cta {
    background-color: #007bff;
    color: white;
    padding: 50px;
  }

  .cta h2 {
    margin-bottom: 10px;
  }

  /* Contact Section */
  .contact {
    padding: 50px;
    background: #f8f9fa;
  }

  .contact h2 {
    color: #007bff;
  }

  .input,
  .textarea {
    width: 80%;
    padding: 10px;
    margin-top: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    display: block;
    margin-left: auto;
    margin-right: auto;
  }

  .textarea {
    height: 100px;
  }

  /* Footer */
  .footer {
    background-color: #333;
    color: white;
    padding: 20px;
    margin-top: 20px;
  }
</style>
