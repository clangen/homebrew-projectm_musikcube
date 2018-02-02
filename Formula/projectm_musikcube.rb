require 'formula'

class ProjectmMusikcube < Formula
    homepage 'http://musikcube.com'
    head 'git://github.com/clangen/projectM-musikcube.git'
    url 'https://github.com/clangen/projectM-musikcube/archive/0.5.2.tar.gz'
    sha256 '4cb445512adeabf74a5a5e64a42c4a6eee53b652cdeb9b5431c69adcafc78aca'
    version '0.5.2'

    depends_on 'cmake' => :build
    depends_on 'musikcube'
    depends_on 'glew'
    depends_on 'freetype'
    depends_on 'ftgl'
    depends_on 'sdl2'

    def install
        system "cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=#{prefix} ."
        system "make"
        system "make install"
    end
end
