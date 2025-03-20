<script setup>
  import { ref } from "vue";

  const isOpen = ref(false);

  const toggleMenu = () => {
    isOpen.value = !isOpen.value;
  };
</script>

<template>
  <nav class="navbar">
    <div class="container">
      <!-- Logo -->
      <router-link to="/" class="logo">OpenCHS</router-link>

      <!-- Desktop Navigation -->
      <div class="nav-links">
        <router-link to="/" class="nav-item">Home</router-link>
        <router-link to="/features" class="nav-item">Features</router-link>
        <router-link to="/docs" class="nav-item">Docs</router-link>
        <router-link to="/blog" class="nav-item">Blog</router-link>
        <router-link to="/community" class="nav-item">Community</router-link>
      </div>

      <!-- Mobile Menu Button -->
      <button @click="toggleMenu" class="menu-button">
        <svg class="icon" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16m-7 6h7"></path>
        </svg>
      </button>
    </div>

    <!-- Mobile Dropdown Menu -->
    <div v-if="isOpen" class="mobile-menu">
      <router-link to="/" class="mobile-item">Home</router-link>
      <router-link to="/features" class="mobile-item">Features</router-link>
      <router-link to="/docs" class="mobile-item">Docs</router-link>
      <router-link to="/blog" class="mobile-item">Blog</router-link>
      <router-link to="/community" class="mobile-item">Community</router-link>
    </div>
  </nav>
</template>

<style scoped>

  /* General Navbar Styling */
  .navbar {
    background-color: #ffffff;
    padding: 15px 20px;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
    position: sticky;
    top: 0;
    width: 100%;
    z-index: 1000;
  }

  .container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    max-width: 1200px;
    margin: auto;
  }

  /* Logo */
  .logo {
    font-size: 24px;
    font-weight: bold;
    color: #0073e6;
    text-decoration: none;
  }

  /* Desktop Navigation */
  .nav-links {
    display: flex;
    gap: 20px;
  }

  .nav-item {
    text-decoration: none;
    color: #0073e6;
    font-weight: 500;
    transition: color 0.3s ease-in-out;
  }

  .nav-item:hover {
    color: #005bb5;
  }

  /* Mobile Menu Button */
  .menu-button {
    background: none;
    border: none;
    cursor: pointer;
    display: none;
    /* Hidden by default (shown in mobile) */
  }

  .icon {
    width: 26px;
    height: 26px;
    color: #0073e6;
  }

  /* Mobile Dropdown Menu */
  .mobile-menu {
    display: none;
    flex-direction: column;
    background: #ffffff;
    box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
    padding: 15px;
    margin-top: 10px;
  }

  .mobile-item {
    text-decoration: none;
    color: #0073e6;
    padding: 10px 0;
    display: block;
    transition: color 0.3s ease-in-out;
  }

  .mobile-item:hover {
    color: #005bb5;
  }

  /* Responsive Design */
  @media screen and (max-width: 768px) {
    .nav-links {
      display: none;
    }

    .menu-button {
      display: block;
    }

    .mobile-menu {
      display: flex;
    }
  }
</style>
