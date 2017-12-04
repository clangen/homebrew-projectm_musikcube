require 'formula'

class ProjectmMusikcube < Formula
    homepage 'http://musikcube.com'
    head 'git://github.com/clangen/projectM-musikcube.git'
    url 'https://github.com/clangen/projectM-musikcube/archive/0.5.1.tar.gz'
    sha256 '747ea1201d439ec9259eef8c580a88bb22c6181c98e6d00300699b7b48d29901'
    version '0.5.1'

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
