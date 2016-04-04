## luaports

luaports is a collection of [OpenBSD](http://openbsd.org) ports regarding
Lua. All of these ports work, and allow you to avoid the hellish abomination
that is luasucks```^W```[luarocks](https://luarocks.org/).

## New ports:

* [busted](https://github.com/olivine-labs/busted) -- ```devel/lua-busted```
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

## Notes regarding specific ports

### Generic: Naming

All ports have been renamed to include the ```lua``` prefix. This was done so
that the OpenBSD ports system can substitute it depending on the Lua flavor
involved. So if the port didn't have ```lua``` in front of the name this was
added. For example ```busted``` was renamed ```lua-busted```, and the port for
```mediator_lua``` was renamed to ```lua-mediator```.

### lua-busted

The various flavours install different stand alone runner scripts properly
prefixed with the correct Lua flavour. So for example the standard (lua51)
busted runner is called ```lua51-busted```, the 5.2 runner is called
```lua52-busted```, and the 5.3 runner is called ```lua53-busted```
respectively.

The software has been patched to work with lua-cliargs version 3.0 and above.

Please note that lua-busted will not work with lua5.3 unless luasocket is
patched with ```luasocket-5.3.patch```.

#### Module

lua-busted now comes with a module that can be included to automatically run
tests for you. Just add lua-busted to your needed modules:

```
MODULES = devel/lua-busted
```

This will automatically add lua-busted as a test dependency and run lua-busted
on a folder in your ```${WRKSRC}``` called ```specl```. If this folder is named
differently (e.g. ```tests```) just do:

```
MODBUSTED_SPECDIR = tests
```

Note that this module does nothing if you have ```NO_TEST``` set to "yes".

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
