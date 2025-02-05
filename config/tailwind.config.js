const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    container:{
      center: true,
      padding: {
        DEFAULT: ".5rem",
        sm: "1rem"
      }
    },
    extend: {
      fontFamily: {
        sans: ['Roboto'],
        serif: ['Bricolage Grotesque'],
        serifSecond: ['Roboto Serif']
      },
      colors: {
        brand: {
          100: '#FCFCFC',
          200: '#F0F0F0',
          300: '#646464',
          400: '#111113',
        }
      }
    },
  },
  plugins: [
    // require('@tailwindcss/forms'),
    // require('@tailwindcss/typography'),
    // require('@tailwindcss/container-queries'),
  ]
}
