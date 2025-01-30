import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

// Load environment variables from `.env` if available
export default defineConfig({
  plugins: [react()],
  server: {
    port: 5173, // Ensures it runs on correct port locally
  },
  define: {
    // Define API Base URL from environment or fallback to localhost
    'import.meta.env.VITE_API_BASE_URL': JSON.stringify(
      process.env.VITE_API_BASE_URL || "http://localhost:3000/api/v1"
    ),
  },
  build: {
    outDir: 'dist', // Ensure the build output goes to `dist`
    sourcemap: false, // Disable sourcemaps for production
  },
});
