import commonjs from "@rollup/plugin-commonjs";
import nodeResolve from "@rollup/plugin-node-resolve";
import typescript from "@rollup/plugin-typescript";

const config = [
  {
    input: "generator/elmTailwindClasses.ts",
    output: {
      dir: "dist",
      format: "cjs",
    },
    plugins: [commonjs(), nodeResolve(), typescript({ module: "esnext" })],
  },
];

export default config;
