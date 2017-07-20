require 'formula'

class ProjectmMusikcube < Formula
    homepage 'http://musikcube.com'
    head 'git://github.com/clangen/projectM-musikcube.git'
    url 'https://github.com/clangen/projectM-musikcube/archive/0.4.7.tar.gz'
    sha256 '1c4b0ac5a4202bc882b55f6072d184ac8ae1715fa6cdf8a1ffe151de1041fcda'
    version '0.4.7'

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
