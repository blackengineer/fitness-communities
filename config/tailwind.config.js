const colors = require('tailwindcss/colors')
const defaultTheme = require('tailwindcss/defaultTheme')

/** @type {import('tailwindcss').Config */
module.exports = {
  darkMode: 'class',

  plugins: [
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
  ],

  content: [
    './app/components/**/*.rb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.erb',
    './app/views/**/*.haml',
    './app/views/**/*.slim',
  ],

  // All the default values will be compiled unless they are overridden below
  theme: {
    // Extend (add to) the default theme in the `extend` key
    extend: {
      // Create at: https://javisperez.github.io/tailwindcolorshades
      colors: {
        'blue': {
          '50': '#eff6ff', 
          '100': '#dbeafe', 
          '200': '#bfdbfe', 
          '300': '#93c5fd', 
          '400': '#60a5fa', 
          '500': '#3b82f6', 
          '600': '#2563eb', 
          '700': '#1d4ed8', 
          '800': '#1e40af', 
          '900': '#1e3a8a', 
          '950': '#172554'
        }  
      },
      fontFamily: {
        sans: ['Inter', ...defaultTheme.fontFamily.sans],
      },
    },
  },

  // Opt-in to TailwindCSS future changes
  future: {
  },
}
