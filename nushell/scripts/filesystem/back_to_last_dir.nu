$env.OMN = ($env.HOME + "/.config/nushell")
cd (^cat ([$env.OMN, "/cache/currentdir.txt"] | str join))
