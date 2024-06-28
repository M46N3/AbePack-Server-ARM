# AbePack Server

Docker image for the Forge modded server with AbePack installed.

## Quickstart

Minimum starting command for online use:

```shell
docker run -dit -e EULA=true -p 25565:25565 m46n3/abepack-server
```

For saving and loading worlds and configurations attach a volume to the /server/server-data path, like so:

```shell
docker run -dit -e EULA=true -v abepack-server:/server/server-data -p 25565:25565 --name rlcraft m46n3/abepack-server
```

**NOTE**: By providing EULA=TRUE you agree to the EULA at [https://account.mojang.com/documents/minecraft_eula](https://account.mojang.com/documents/minecraft_eula).

## Environment Variables

- EULA (Required)
  - Default: none
- RAM - Sets the dedicated RAM (java -Xms, -Xmx)
  - Default: 6G

## References

- JVM Parameters  
  [https://aikar.co/2018/07/02/tuning-the-jvm-g1gc-garbage-collector-flags-for-minecraft/](https://aikar.co/2018/07/02/tuning-the-jvm-g1gc-garbage-collector-flags-for-minecraft/)
- Crontab  
  [https://www.adminschoice.com/crontab-quick-reference](https://www.adminschoice.com/crontab-quick-reference)
