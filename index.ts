import elmTWClasses from "./generator/elmTailwindClasses";

elmTWClasses({
  config: "../tailwind.config.js",
  base: "TW",
  output: "../src",
  utilities: ["Background"],
});
