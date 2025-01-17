core = require('core');
config = require('config');

conky.config = {
  alignment = 'top_left',
  background = false,
  border_width = 5,
  cpu_avg_samples = 2,
  default_color = '#ffffff',
  default_outline_color = '#000000',
  default_shade_color = '#000000',
  double_buffer = true,
  draw_borders = false,
  draw_graph_borders = false,
  draw_outline = false,
  draw_shades = false,
  gap_x = 20,
  gap_y = 150,
  max_user_text = 10000,
  maximum_width = 900,
  net_avg_samples = 2,
  no_buffers = true,
  override_utf8_locale = true,
  own_window = true,
  own_window_colour = '#000000',
  own_window_transparent = true,
  own_window_type = 'normal',
  own_window_hints = 'undecorated,below,sticky,skip_taskbar,skip_pager',
  pad_percents = 2,
  short_units = true,
  stippled_borders = 3,
  text_buffer_size = 8000,
  total_run_times = 0,
  update_interval = 2.0,
  uppercase = false,
  use_spacer = 'right',
  use_xft = true,
  xftalpha = 1,
  own_window_argb_value = 0,
  own_window_argb_visual = true
}

conky.text = interp([[
  ${color #{color}}
  ${font #{font}:bold:size=15}CPU: ${font #{font}:light:size=15}${cpu cpu0}${offset -5}% / 100%
  ${font #{font}:bold:size=15}RAM: ${font #{font}:light:size=15}${mem} / ${memmax}
  ${font #{font}:bold:size=15}DISK: ${font #{font}:light:size=15}${fs_used} / ${fs_size}
  ${font #{font}:bold:size=15}UPTIME: ${font #{font}:light:size=15}${uptime}
  ${font #{font}:bold:size=15}KERNEL: ${font #{font}:light:size=15}${kernel}
]], {color = config.color, font = config.font});
