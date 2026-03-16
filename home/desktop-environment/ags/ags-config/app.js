import app from "ags/gtk4/app";
import css from "./lib/styles/styles.css";

import Border from "./lib/modules/border/Border";

app.start({
  css: css,
  main() {
    Border();
  },
});
