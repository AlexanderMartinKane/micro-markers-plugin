# micro-markers-plugin

Mark selection support for Micro text editor

## Instalation

Clone the repository to your Micro `plug` directory:

```bash
$ git clone https://github.com/AlexanderMartinKane/micro-markers-plugin.git ~/.config/micro/plug/markers
```

## Configuration

1. Run `micro` editor

```bash
micro
```

2. Create a key binding. First, press `Ctrl + e`, type the command below, and press `Enter`

```bash
bind "Alt-m" togglemarkselection
```

Make sure Alt acts as a meta key. If you're using Warp, go to Warp's settings -> Features -> Keys and make sure "Left Alt key is Meta" toggle is ON.

Alternatively, you can add this line manually to you `~/.config/micro/bindings.json`:

```bash
micro ~/.config/micro/bindings.json
```

```json
{
	...
	"Alt-m": "command:togglemarkselection"
}
```
