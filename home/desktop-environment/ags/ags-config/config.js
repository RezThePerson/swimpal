const { App, Widget } = ags;

const { Box, Label, Window } = Widget;

const Bar = () =>
  Window({
    name: "bar",
    anchor: ["top", "left", "right"],
    exclusivity: "exclusive",
    child: Box({
      className: "bar",
      children: [Label({ label: "AGS running" })],
    }),
  });

App.config({
  windows: [Bar()],
});
