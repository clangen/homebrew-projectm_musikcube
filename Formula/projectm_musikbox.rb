require 'formula'

class ProjectmMusikbox < Formula
    homepage 'http://musikcube.com'
    head 'git://github.com/clangen/projectM-musikcube.git'
    url 'https://github.com/clangen/projectM-musikcube/archive/0.2.1.tar.gz'
    sha256 '0be3c45e80c1a98ec58c2bf9acf6144bbcfbc1f98d86df310f2bb504c47e0aff'
    version '0.2.1'

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
