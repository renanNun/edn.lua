package = "edn.lua"
version = "dev-1"
source = {
   url = "git+ssh://git@github.com/renanNun/edn.lua.git"
}
description = {
   summary = "Whipped this up because I needed an EDN parser, and there didn't seem to be any in the Lua ecosystem.",
   detailed = [[
Whipped this up because I needed an EDN parser, and
there didn't seem to be any in the Lua ecosystem.  Sharing
just in case anyone else is desperate.]],
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      edn = "edn.lua"
   }
}
