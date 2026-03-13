import { Astal } from "ags/gtk4";
const { TOP, LEFT, BOTTOM, RIGHT } = Astal.WindowAnchor;

import HyperlandWindows from "./HyperlandWindows.js";

export default function Bar() {
  return (
    <window
      visible
      anchor={LEFT | TOP | BOTTOM}
      exclusivity={Astal.Exclusivity.EXCLUSIVE}
      widthRequest={40}
    >
      <HyperlandWindows />
    </window>
  );
}
