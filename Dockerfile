from jetbrains/teamcity-agent

COPY install.sh /install
COPY install_sfml.sh /install_sfml
COPY install_sfgui.sh /install_sfgui
COPY install_thor.sh /install_thor
COPY sfml.patch /sfml.patch

RUN /install
