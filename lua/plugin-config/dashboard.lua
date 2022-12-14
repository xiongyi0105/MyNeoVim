local status, db = pcall(require, "dashboard")
if not status then
  vim.notify("ζ²‘ζζΎε° dashboard")
  return
end

db.custom_footer = {
 "",
 "",
 "",
 "",
 "π€‘ Stay Hungry! Stay Foolish!             ",
 "",
 "",
-- "All problems in computer science can be solved by another level of indirection"
}


db.custom_center = {
  {
    icon = "π§  ",
    desc = "Projects                            ",
    action = "Telescope projects",
  },
  {
    icon = "π  ",
    desc = "Find file                           ",
    action = "Telescope find_files",
  },
  {
    icon = "π  ",
    desc = "Recently files                      ",
    action = "Telescope oldfiles",
  },
  {
    icon = "π§  ",
    desc = "Edit keybindings                    ",
    action = "edit ~/.config/nvim/lua/keybindings.lua",
  },
  {
    icon = "π  ",
    desc = "Edit Projects                       ",
    action = "edit ~/.local/share/nvim/project_nvim/project_history",
  },  
  {
    icon = "πΌοΈ  ",
    desc = "Change colorscheme                  ",
    action = "Telescope colorscheme",
  },

  -- {
  --   icon = "ξ  ",
  --   desc = "Edit .bashrc                        ",
  --   action = "edit ~/.bashrc",
  -- },
  -- {
  --   icon = "ξ  ",
  --   desc = "Edit init.lua                       ",
  --   action = "edit ~/.config/nvim/init.lua",
  -- },
  -- {
  --   icon = "ο  ",
  --   desc = "Find file                           ",
  --   action = "Telescope find_files",
  -- },
  -- {
  --   icon = "ο  ",
  --   desc = "Find text                           ",
  --   action = "Telescopecope live_grep",
  -- },
}


db.custom_header = {
[[]],
[[]],
[[]],
[[]],
[[]],
[[]],
[[::::    ::: :::::::::: ::::::::  :::     ::: ::::::::::: ::::    ::::  ]],
[[:+:+:   :+: :+:       :+:    :+: :+:     :+:     :+:     +:+:+: :+:+:+ ]],
[[:+:+:+  +:+ +:+       +:+    +:+ +:+     +:+     +:+     +:+ +:+:+ +:+ ]],
[[+#+ +:+ +#+ +#++:++#  +#+    +:+ +#+     +:+     +#+     +#+  +:+  +#+ ]],
[[+#+  +#+#+# +#+       +#+    +#+  +#+   +#+      +#+     +#+       +#+ ]],
[[#+#   #+#+# #+#       #+#    #+#   #+#+#+#       #+#     #+#       #+# ]],
[[###    #### ########## ########      ###     ########### ###       ### ]],
[[]],
[[]],
[[]],
                }
