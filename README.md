# Bla

In some cases Logger.info does not display in the terminal. 

```
c44d62a 2024-05-24 15:08:21 Eddy de Boer (HEAD -> main) Logger working: kafka_ex disabled
ee199f3 2024-05-24 14:28:34 Eddy de Boer Logger not working: kafka_ex enabled
```

Example of working:

```
$ git co main
$ rm mix.lock ; rm deps -rf ; rm _build -rf ;mix deps.get ; MIX_ENV=staging iex -S mix

Interactive Elixir (1.16.2) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Bla.hello

15:12:22.018 [info] world
:ok
```

Example of not working:

```
$ git co ee199f3 
$ rm mix.lock ; rm deps -rf ; rm _build -rf ;mix deps.get ; MIX_ENV=staging iex -S mix

Interactive Elixir (1.16.2) - press Ctrl+C to exit (type h() ENTER for help)

iex(1)> Bla.hello
:ok
```
