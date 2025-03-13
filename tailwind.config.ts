
import type { Config } from 'tailwindcss';

export default {
    content: ['./src/**/*.{html,js,svelte,ts}'],
    darkMode: 'class',
    theme: {
        extend: {
            colors: {
                'black-bean': '#2E0E02',
                'seal-brown': '#581908',
                'burnt-umber': '#983628',
                'plum': '#E2AEDD',
                'thistle': '#EBCBF4',
            }
        }
    },
    plugins: []
} as Config;
