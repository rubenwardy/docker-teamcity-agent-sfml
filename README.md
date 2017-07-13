# TeamCity SFML Agent for Docker

Inherits from [jetbrains/docker](https://hub.docker.com/r/jetbrains/teamcity-agent/).

Includes:

* SFML (latest master)
* SFGUI (latest master)
* Thor v2

## docker-compose example

```yml
teamcity-agent:
  build: docker-teamcity-agent-sfml
  depends_on:
    - teamcity-server
  environment:
    - SERVER_URL=http://teamcity-server:8111
  volumes:
    - "/home/teamcity/data/agent:/data/teamcity_agent/conf"
```

## todo

* Add to [hub.docker.com](https://hub.docker.com)
