# Simple-Jar-Docker

Docker image running a jar file

## Usage

```bash
$ docker run -d \
    -v minecraft:/home/server \
    -p 25565:25565 \
    thisredh/purpurmc
```

## Environment Variables

All of the Environment Variables:

| Variable | Value | Description |
| - | - | - |
| JAR | `server.jar` | The jar to start |
| MC_EULA | `true` | Accepting the [EULA](https://account.mojang.com/documents/minecraft_eula) |
| MC_RAM_XMS | `1536M` | Preallocated RAM (for Purpur) |
| MC_RAM_XMX | `2048M` | Max RAM (for Purpur) |
| MC_PRE_JAR_ARGS | `<ARGS>` | Java Arg's (for experienced User's only) |
| MC_POST_JAR_ARGS | `<ARGS>` | Purpur Arg's (for experienced User's only) |