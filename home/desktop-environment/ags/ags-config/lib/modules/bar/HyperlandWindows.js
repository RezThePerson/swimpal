import { execAsync } from "ags/process"
import { Hyprland } from "astal/hyprland"

const hypr = Hyprland.get_default()

export default function HyprlandWindows() {
  const workspaces = [1, 2, 3, 4, 5]

  const getWorkspace = (id) =>
    hypr.workspaces.find(ws => ws.id === id)

  return (
    <box className="hyprland-windows">
      {workspaces.map(id => (
        <button
          className={`hyprland-window-button hyprland-window-button${id}`}
          onClicked={() => execAsync(`hyprctl dispatch workspace ${id}`)}
          setup={(self) => {
            const update = () => {
              const ws = getWorkspace(id)

              if (hypr.activeWorkspace?.id === id)
                self.label = "●"
              else if (ws && ws.clients > 0)
                self.label = "X"
              else
                self.label = "O"
            }

            self.hook(hypr, "notify::active-workspace", update)
            self.hook(hypr, "notify::workspaces", update)

            update()
          }}
        />
      ))}
    </box>
  )
}