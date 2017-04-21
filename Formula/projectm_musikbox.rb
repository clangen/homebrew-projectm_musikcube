require 'formula'

class ProjectmMusikbox < Formula
    homepage 'http://musikcube.com'
    head 'git://github.com/clangen/projectM-musikcube.git'
    url 'https://github.com/clangen/projectM-musikcube/archive/0.4.3.tar.gz'
    sha256 'aaf671f201b065b69c69eb32660609462251c2b2e5c55b8b81d970d431ac0153'
    version '0.4.3'

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
