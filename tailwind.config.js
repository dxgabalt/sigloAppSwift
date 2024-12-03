/** @type {import('tailwindcss').Config} */
module.exports = {
  // NOTE: Update this to include the paths to all of your component files.
  content: [
    "./app/**/*.{js,jsx,ts,tsx}",
    "./app.{js,jsx,ts,tsx}",
    "./components/**/*.{js,jsx,ts,tsx}",
    "./presentation/**/*.{js,jsx,ts,tsx}",
  ],
  presets: [require("nativewind/preset")],
  theme: {
    extend: {

      fontFamily: {
        'NotoSerif-black': ['NotoSerif_Condensed-Black', 'sans-serif'],
        'NotoSerif-medium': ['NotoSerif_Condensed-Medium', 'sans-serif'],
        'NotoSerif-light': ['NotoSerif_Condensed-Light', 'sans-serif'],
      }

    },
  },
  plugins: [],
}