require 'formula'

class ProjectmMusikcube < Formula
    homepage 'http://musikcube.com'
    head 'git://github.com/clangen/projectM-musikcube.git'
    url 'https://github.com/clangen/projectM-musikcube/archive/0.5.0.tar.gz'
    sha256 '1118ce08cf507c4d22e02c36e3b1dab322e8cb69bae75dccda03d6267aa0c957'
    version '0.5.0'

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
