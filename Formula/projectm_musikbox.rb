require 'formula'

class ProjectmMusikbox < Formula
    homepage 'http://musikcube.com'
    head 'git://github.com/clangen/projectM-musikcube.git'
    url 'https://github.com/clangen/projectM-musikcube/archive/0.2.0.tar.gz'
    sha256 '307ee5c29ea317cdd16c97ce732cc8e9b2a8599b83ecfe8259c17ba2cbf465cf'
    version '0.2.0'

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
