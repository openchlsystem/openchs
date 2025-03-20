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
