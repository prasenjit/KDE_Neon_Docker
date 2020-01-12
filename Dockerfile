FROM kdeneon/plasma:dev-stable

USER root

RUN apt-get update && apt-get dist-upgrade -y

RUN apt-get install -y --no-install-recommends \
  cmake extra-cmake-modules g++ gettext git kdoctools-dev kross-dev \
  libboost-all-dev libeigen3-dev libetonyek-dev libfontconfig1-dev \
  libfreetype6-dev libgit2-dev libgsl-dev libkf5activities-dev \
  libkf5archive-dev libkf5kcmutils-dev libkf5kdelibs4support-dev \
  libkf5notifications-dev libkf5notifyconfig-dev libkf5parts-dev \
  libkf5wallet-dev libkf5xmlgui-dev libodfgen-dev libpoppler-qt5-dev \
  libqca-qt5-2-dev libqt5opengl5-dev libqt5svg5-dev libqt5x11extras5-dev \
  librevenge-dev libwpd-dev libwpg-dev libwps-dev ninja-build pkg-config \
  python3-pip \
  sudo

# dependencies for development
RUN pip3 install PySide2

RUN apt-get install -y --no-install-recommends \
  cmake-curses-gui \
  less vim strace qtcreator kdevelop valgrind gdb

USER neon
CMD ["/bin/bash", "-l"]
