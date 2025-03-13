import { sveltekit } from '@sveltejs/kit/vite';
import { defineConfig } from 'vite';

export default defineConfig({
	plugins: [sveltekit()],
	server: {
		proxy: {
			'/api': {
				target: 'http://localhost:6001',
				changeOrigin: true,
			},
			'/token': {
				target: 'http://localhost:6001',
				changeOrigin: true,
			},
		}
	}
});
