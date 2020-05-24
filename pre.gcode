; Reset
M107       ; Fan off
M221 S100  ; Set extrude factor 100%
M220 S100  ; Set speed factor to 100%
G92 E0     ; Reset extruder position
G90        ; Set to absolute positioning
M82        ; Absolute E
; Heat
M140 S60
M109 S215
; Level
M420 S0    ; Leveling off
G28        ; Home all axis
G29        ; Auto Bed Leveling
M420 S1 Z2 ; Leveling on, fading at 2 mm height

; Cura clean
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y5 Z0.3 F5000.0 ; Move to start position
G1 X5 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X5.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X5.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish
