return {
  version = "1.9",
  luaversion = "5.1",
  tiledversion = "1.9.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 15,
  height = 10,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 7,
  nextobjectid = 12,
  properties = {},
  tilesets = {
    {
      name = "Indoor",
      firstgid = 1,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 40,
      image = "../assets/maps/Inner.png",
      imagewidth = 640,
      imageheight = 400,
      objectalignment = "unspecified",
      tilerendersize = "tile",
      fillmode = "stretch",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {},
      tilecount = 1000,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 15,
      height = 10,
      id = 1,
      name = "Ground",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81,
        81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81,
        322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 283,
        322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 323,
        322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 323,
        322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 323,
        322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 323,
        322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 323,
        322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 322, 323,
        322, 322, 322, 322, 1, 1, 322, 322, 322, 322, 322, 322, 322, 322, 363
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 15,
      height = 10,
      id = 2,
      name = "Ground2",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 484, 485, 486, 210, 211, 0, 403, 0, 15, 16, 0, 0,
        0, 0, 0, 524, 525, 526, 0, 0, 0, 443, 0, 0, 0, 0, 0,
        0, 321, 282, 282, 282, 282, 282, 282, 282, 282, 282, 282, 282, 282, 0,
        121, 321, 0, 0, 322, 177, 322, 322, 322, 179, 0, 0, 0, 0, 0,
        161, 321, 0, 0, 0, 217, 322, 322, 322, 219, 0, 0, 0, 0, 0,
        161, 321, 0, 0, 0, 257, 0, 0, 0, 259, 0, 0, 0, 0, 0,
        161, 321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        161, 321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        161, 321, 0, 401, 362, 362, 402, 0, 0, 0, 0, 0, 0, 0, 0,
        201, 361, 362, 363, 0, 0, 361, 362, 362, 362, 362, 362, 362, 362, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 15,
      height = 10,
      id = 3,
      name = "Objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        367, 368, 369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        407, 408, 409, 0, 0, 0, 0, 0, 0, 0, 0, 58, 59, 0, 0,
        447, 448, 449, 0, 0, 0, 0, 0, 0, 0, 0, 98, 99, 0, 0,
        0, 0, 0, 0, 0, 0, 54, 55, 56, 0, 0, 138, 139, 0, 0,
        0, 0, 0, 0, 0, 0, 94, 95, 96, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 134, 135, 136, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "Player",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 10,
          name = "player",
          class = "",
          shape = "point",
          x = 80,
          y = 144,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
      name = "Doors",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 11,
          name = "toMainMap",
          class = "",
          shape = "rectangle",
          x = 64,
          y = 154,
          width = 32,
          height = 4,
          rotation = 0,
          visible = true,
          properties = {
            ["destination"] = "mainMap",
            ["enabled"] = true
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "Barriers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 48,
          height = 44,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          class = "",
          shape = "rectangle",
          x = 48,
          y = 0,
          width = 192,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          class = "",
          shape = "rectangle",
          x = 80,
          y = 64,
          width = 16,
          height = 20,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          class = "",
          shape = "rectangle",
          x = 96,
          y = 48,
          width = 48,
          height = 44,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          class = "",
          shape = "rectangle",
          x = 144,
          y = 64,
          width = 16,
          height = 20,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          class = "",
          shape = "rectangle",
          x = 176,
          y = 32,
          width = 32,
          height = 28,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          class = "",
          shape = "rectangle",
          x = 0,
          y = 44,
          width = 16,
          height = 116,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          class = "",
          shape = "rectangle",
          x = 236,
          y = 32,
          width = 4,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          class = "",
          shape = "rectangle",
          x = 16,
          y = 156,
          width = 220,
          height = 4,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
