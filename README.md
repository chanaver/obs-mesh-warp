# OBS Mesh Warp Shader + Drag Editor

A mesh-warp / multi-point corner-pin tool for OBS Studio, built as ShaderFilter shaders plus a small HTML drag editor.

This is **not a native OBS plugin**. It runs on top of Exeldro's **ShaderFilter** plugin. The shaders do the warp in OBS, and the HTML editor gives you draggable points with an optional live OBS WebSocket link.

## What it does

- Warp an OBS source with a mesh of points instead of only four corners.
- Flex grid: choose 2×2 up to 6×6 points.
- The editor can download the Flex shader with the current grid and point values baked in as defaults.
- Save/load the current mesh as a JSON preset.
- Inverse-bilinear cells, so cells do not show the usual diagonal split seam.
- Optional live sync: drag points in the editor and OBS follows over OBS WebSocket v5.
- Grid overlay can be toggled from the editor.
- Fold-over guard: moves that would cross grid lines and fold a cell can be blocked.
- “Flatten interior” and “Flatten to plane” helpers for keeping a flat screen clean.

## Requirements

- OBS Studio 30+ recommended.
- [obs-shaderfilter](https://github.com/exeldro/obs-shaderfilter) by Exeldro.
- For live editor sync: OBS WebSocket server enabled in OBS.

## Install

1. Install **obs-shaderfilter**.
2. In OBS, select a source and open **Filters**.
3. Add **User-defined shader** (ShaderFilter).
4. Load one of these files:
   - `shaders/mesh-warp-flex.shader`
5. If points move outside the source frame, raise **Extra pixels** in the ShaderFilter settings so the result is not clipped.

## Live drag editor

1. Open `editor/mesh-warp-drag-editor.html` in a browser.
2. In OBS, enable the WebSocket server: **Tools → WebSocket Server Settings**.
3. In the editor, keep the default address `ws://127.0.0.1:4455`, enter the WebSocket password if you set one, and click **Connect to OBS**.
4. Keep **Send mode** set to **Flex · send editor grid as-is**.
5. Drag points. OBS updates while you drag.

In Flex mode, the editor sends the horizontal/vertical point counts and all point positions to OBS. If the OBS filter already has a different shader/grid loaded, use **Auto-detect from OBS** after connecting.

## Quick use

- For one flat screen or a simple corner-pin: use **2×2** or press **Flatten to plane**.
- For a slightly uneven surface: use 3×3 or 4×4 and move points gently.
- For strongly curved/irregular surfaces: use more points, but keep the grid lines from crossing.
- If a cell folds over itself, the result will fold and tear. Move the point back or use **Reset**.

## Files

```text
shaders/
  mesh-warp-flex.shader   Flexible 2×2 to 6×6 mesh warp shader
editor/
  mesh-warp-drag-editor.html  Drag editor with OBS WebSocket sync
```

## Limitations

- OBS ShaderFilter cannot receive mouse drags inside the OBS preview, so the drag editor is a separate HTML page.
- The live link uses OBS WebSocket. Without it, export a shader from the editor and load it in OBS.
- Folded or self-crossing grids are invalid; the surface will overlap and leave empty areas.
- A many-point mesh is piecewise. On a flat plane, keep interior points flattened if you want one clean perspective surface.

## Roadmap

- Native OBS plugin version with draggable handles in the OBS preview.
- Preset save/load in the editor.
- Better edge feather / mask options.

## Support

If this helps your stream, class, or projection work, support links will be added here.

## License

MIT — see `LICENSE`.
