/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{vue,js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        terracotta: {
          50: '#FDF7F5',
          100: '#FBF0EC',
          200: '#F6DDD4',
          300: '#ECC0B2',
          400: '#DD9985',
          500: '#8B512C',
          600: '#86432B',
          700: '#A45A41',
          800: '#562C20',
          900: '#3D1C13',
        },
        olive: {
          50: '#F6F8F4',
          100: '#ECF0E8',
          200: '#D6DEC9',
          500: '#65745A',
          600: '#50652A',
          700: '#394D14',
        },
        ochre: {
          400: '#D4AF37',
          500: '#C18D3A',
          600: '#A07024',
        },
        cream: {
          50: '#FFFFFF',
          100: '#FFF8F3',
          200: '#F6ECE2',
          300: '#EAE1D7',
          400: '#E5E1C9',
        },
        charcoal: {
          800: '#343029',
          900: '#1F1B15',
        }
      },
      fontFamily: {
        serif: ['"Libre Caslon Text"', '"Playfair Display"', 'Georgia', 'serif'],
        sans: ['"DM Sans"', 'Inter', 'system-ui', 'sans-serif'],
      },
      letterSpacing: {
        editorial: '0.15em',
        widest: '0.25em',
      },
      boxShadow: {
        'paper': '0 4px 20px -2px rgba(86, 44, 32, 0.06), 0 2px 6px -1px rgba(86, 44, 32, 0.04)',
        'paper-lg': '0 12px 32px -4px rgba(86, 44, 32, 0.1), 0 4px 12px -2px rgba(86, 44, 32, 0.05)',
        'inner-letterpress': 'inset 0 1px 3px rgba(0,0,0,0.08)',
      }
    },
  },
  plugins: [],
}
