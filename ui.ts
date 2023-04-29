// @ts-ignore
import { Elm as ElmJs } from "./src/Main.elm";

const app: Elm.Main.App = ElmJs.Main.init({
  node: document.querySelector("main"),
  flags: {},
});
