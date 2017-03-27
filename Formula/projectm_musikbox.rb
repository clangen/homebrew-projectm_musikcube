require 'formula'

class ProjectmMusikbox < Formula
    homepage 'http://musikcube.com'
    head 'git://github.com/clangen/projectM-musikcube.git'
    url 'https://github.com/clangen/projectM-musikcube/archive/0.4.1.tar.gz'
    sha256 '56740d7f3c112a5c9117b2ba902b364aecb070b02476f8a77f2c468f7c02ffe6'
    version '0.4.1'

    depends_on 'cmake' => :build
    depends_on 'musikbox'
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
