import { defineConfig } from 'vite';

export default defineConfig({
  server: {
    port: process.env.PORT || 3005, // Use Render's assigned port or fallback to 3005
    host: '0.0.0.0' // Ensures it binds correctly
  }
});