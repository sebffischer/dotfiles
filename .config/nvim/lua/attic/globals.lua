P = function(v)
  print(vim.inspect(v))
  return v
end

RELOAD = function(...)
  require("plenary.reloader").reload_module(...)
end

R = function(name)
  RELOAD(name)
  return require(name)
end
