import { Astal } from "ags/gtk4";
const { TOP, LEFT, BOTTOM, RIGHT } = Astal.WindowAnchor;

export default function Border() {
  return (
    <window
      cssClasses={["border-window"]}
      visible
      anchor={LEFT | TOP | BOTTOM | RIGHT}
      exclusivity={Astal.Exclusivity.EXCLUSIVE}
      widthRequest={40}
    >
      <box cssClasses={["border-root"]}>
        <box cssClasses={["bar-gap"]} />
      </box>
    </window>
  );
}
