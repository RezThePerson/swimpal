import app from "ags/gtk4/app";
import css from "./lib/styles/styles.css";

import Bar from "./lib/modules/bar/Bar";

app.start({
  css: css,
  main() {
    Bar();
  },
});
