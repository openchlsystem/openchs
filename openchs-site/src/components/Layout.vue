<script setup>
  import Navbar from "./Navbar.vue";
</script>

<template>
  <div class="layout">
    <!-- Navigation Bar -->
    <Navbar />

    <!-- Main Content Area -->
    <main class="content">
      <router-view />
    </main>

    <!-- Footer Section -->
    <footer class="footer">
      <p>© 2025 Bitz IT Consulting Ltd. All Rights Reserved.</p>
    </footer>
  </div>
</template>

<style scoped>

  /* General Layout Styling */
  .layout {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
    background-color: #f8f9fa;
    /* Light Gray Background */
    font-family: Arial, sans-serif;
  }

  /* Main Content */
  .content {
    flex: 1;
    /* Pushes footer to the bottom */
    max-width: 1200px;
    margin: auto;
    padding: 20px;
    animation: fadeIn 0.5s ease-in-out;
    /* Smooth animation */
  }

  /* Footer */
  .footer {
    background: #003366;
    /* Dark Blue */
    color: white;
    text-align: center;
    padding: 15px 0;
    font-size: 14px;
    position: relative;
    width: 100%;
  }

  /* Smooth Fade-in Animation */
  @keyframes fadeIn {
    from {
      opacity: 0;
      transform: translateY(10px);
    }

    to {
      opacity: 1;
      transform: translateY(0);
    }
  }
</style>
