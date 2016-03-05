## luaports

luaports is a collection of [OpenBSD](http://openbsd.org) ports regarding
Lua. All of these ports work, and allow you to avoid the hellish abomination
that is luasucks^W[luarocks](https://luarocks.org/).

## New ports:

* [cliargs](https://github.com/amireh/lua_cliargs) -- ```devel/lua-cliargs```
* [dkjson](https://github.com/luadist/dkjson) -- ```textproc/lua-dkjson```
* [luassert](https://github.com/olivine-labs/luassert) -- ```devel/luassert```
* [lyaml](https://github.com/gvvaughan/lyaml) -- ```textproc/lua-lyaml```
* [lua-openbsd](https://github.com/n0la/lua-openbsd) -- ```devel/lua-openbsd```
* [lua-term](https://github.com/hoelzro/lua-term) -- ```devel/lua-term```
* [mediator_lua](https://github.com/olivine-labs/mediator_lua) -- ```devel/lua-mediator```
* [say](https://github.com/olivine-labs/say) -- ```devel/lua-say```

## Updated ports

These ports have been updated compared to base ports:

* [luastdlib](https://github.com/lua-stdlib/lua-stdlib) -- ```devel/luastdlib```

## Usage

Check out the repository and update your ```PORTSDIR_PATH```:

```
$ export PORTSDIR_PATH=~/where/ever/luaports/:/usr/ports:/usr/ports/mystuff
```

Then go into a subfolder and do:

```
$ doas make install
```

For Lua 5.2 do:

```
$ doas env FLAVOR=lua52 make install
```

And for Lua 5.3 do:

```
$ doas env FLAVOR=lua53 make install
```

## Licence

All ported software is of course under some sort of licence. This port
collection however is licenced under the BSD licence.
