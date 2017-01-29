require 'formula'

class ProjectmMusikbox < Formula
    homepage 'http://musikcube.com'
    head 'git://github.com/clangen/projectM-musikcube.git'
    url 'https://github.com/clangen/projectM-musikcube/archive/0.3.1.tar.gz'
    sha256 '1ea8d69c24cce1a7f1c16765e934fc2b57e0eb8c4de9480af24e0f2cff122f34'
    version '0.3.1'

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
