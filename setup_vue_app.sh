#!/bin/bash

# Set project name
PROJECT_NAME="openchs-site"

echo "🚀 Setting up Vue 3 project: $PROJECT_NAME"

# 1️⃣ Initialize Vue 3 project in the current directory
npm create vite@latest $PROJECT_NAME --template vue

# Navigate into the project directory
cd $PROJECT_NAME

# 2️⃣ Install dependencies
npm install vue-router@4 pinia tailwindcss postcss autoprefixer

# Initialize Tailwind CSS
npx tailwindcss init -p

# Add Tailwind to CSS config
cat > tailwind.config.js <<EOL
/** @type {import('tailwindcss').Config} */
export default {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  theme: { extend: {} },
  plugins: [],
};
EOL

# Update main.css to use Tailwind
cat > src/assets/main.css <<EOL
@tailwind base;
@tailwind components;
@tailwind utilities;
EOL

# 3️⃣ Create Vue Router setup
mkdir src/router

cat > src/router/index.js <<EOL
import { createRouter, createWebHistory } from "vue-router";
import Home from "@/views/Home.vue";
import Features from "@/views/Features.vue";
import Docs from "@/views/Docs.vue";
import Blog from "@/views/Blog.vue";
import Community from "@/views/Community.vue";

const routes = [
  { path: "/", component: Home },
  { path: "/features", component: Features },
  { path: "/docs", component: Docs },
  { path: "/blog", component: Blog },
  { path: "/community", component: Community },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
EOL

# 4️⃣ Create site pages with placeholder content
mkdir src/views

echo '<template><div class="p-10 text-center"><h1 class="text-3xl font-bold">Welcome to OpenCHS</h1></div></template>' > src/views/Home.vue
echo '<template><div class="p-10 text-center"><h1 class="text-3xl font-bold">Features</h1><p>Explore OpenCHS Features here...</p></div></template>' > src/views/Features.vue
echo '<template><div class="p-10 text-center"><h1 class="text-3xl font-bold">Documentation</h1><p>Developer documentation will go here.</p></div></template>' > src/views/Docs.vue
echo '<template><div class="p-10 text-center"><h1 class="text-3xl font-bold">Blog</h1><p>Read about the latest OpenCHS updates.</p></div></template>' > src/views/Blog.vue
echo '<template><div class="p-10 text-center"><h1 class="text-3xl font-bold">Community</h1><p>Join the OpenCHS community.</p></div></template>' > src/views/Community.vue

# 5️⃣ Update main.js to use Vue Router
cat > src/main.js <<EOL
import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";
import "./assets/main.css";

const app = createApp(App);
app.use(router);
app.mount("#app");
EOL

# 6️⃣ Update App.vue with navigation
cat > src/App.vue <<EOL
<template>
  <div class="min-h-screen bg-gray-100">
    <nav class="p-5 bg-white shadow-md flex justify-center space-x-4">
      <router-link to="/" class="text-blue-500 hover:underline">Home</router-link>
      <router-link to="/features" class="text-blue-500 hover:underline">Features</router-link>
      <router-link to="/docs" class="text-blue-500 hover:underline">Docs</router-link>
      <router-link to="/blog" class="text-blue-500 hover:underline">Blog</router-link>
      <router-link to="/community" class="text-blue-500 hover:underline">Community</router-link>
    </nav>
    <router-view />
  </div>
</template>
EOL

# 7️⃣ Start the development server
echo "✅ Setup complete! Run the following commands to start your app:"
echo "cd $PROJECT_NAME"
echo "npm run dev"

