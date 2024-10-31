/** @type {import('tailwindcss').Config} */
const flowbite = require("flowbite-react/tailwind");
module.exports = {
  content: ["./src/**/*.{html,js}", flowbite.content()],
  theme: {
    extend: {},
  },
  plugins: [flowbite.plugin(),],
};
