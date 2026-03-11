const { Widget } = ags;

export default Widget.Window({
    name: "bar",
    anchor: ["top", "left", "right"],
    child: Widget.CenterBox({
        startWidget: Widget.Label({ label: "Left" }),
        centerWidget: Widget.Label({ label: "Center" }),
        endWidget: Widget.Label({ label: "Right" }),
    }),
});