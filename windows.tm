<TeXmacs|1.0.7.20>

<style|<tuple|generic|puredoc>>

<\body>
  <hlink|toc|#windows-toc> <hlink|index|genindex.tm>
  <hlink|modules|pure-modindex.tm> \| <hlink|next|purepad.tm> \|
  <hlink|previous|install.tm> \| <hlink|Pure Language and Library
  Documentation|index.tm>

  <section*|Running Pure on Windows<label|running-pure-on-windows>>

  This document provides some information pertaining to the Windows version
  of Pure, available from the Pure website in the form of an MSI package.
  Please note that the Windows version has a custom directory layout which is
  more in line with standard Windows applications, and will by default be
  installed in the standard <verbatim|Program> <verbatim|Files> directory on
  your system.

  Normally, most things should be set up properly after you installed the MSI
  package, but here are a few things that you should know when running the
  Windows version:

  <\itemize>
    <item>The Pure interpreter requires the <verbatim|PURELIB> environment
    variable to point to the directory containing the prelude and other
    library modules, available in the <verbatim|lib> subdirectory of the Pure
    program directory. Also, the <verbatim|PATH> environment variable should
    contain both the Pure program directory and the <verbatim|lib>
    subdirectory, so that you can run the interpreter and compiled programs
    from the command line. Both environment variables are set automatically
    during installation. To make this work, you have to install the package
    with administrator rights.

    <item>The package includes a shortcut to run the Pure interpreter in a
    command window, as well as a shortcut for the online documentation that
    you're looking at. It also includes the <with|font-series|bold|PurePad>
    application, a GUI frontend to the Pure interpreter which lets you edit
    and run Pure scripts on Windows, see <hlink|<em|Using
    PurePad>|purepad.tm>. After installation you can find these items in the
    <verbatim|Pure> submenu of the Program menu.

    <item>Pure scripts can be edited in any text editor. Syntax highlighting
    and programming modes are provided for
    <hlink|Emacs|http://www.gnu.org/software/emacs/>,
    <hlink|Vim|http://www.vim.org/> and various other popular text editors.
    After installation you can find these in the <verbatim|etc> subdirectory
    of the program directory. Please check the files in this directory for
    installation instructions.

    <item>The interpreter has a few interactive commands (<verbatim|ls>,
    <verbatim|pwd>, etc.) which require Unix-like utilities. To make these
    work, we recommend installing the CoreUtils package from the
    <hlink|GnuWin32|http://gnuwin32.sf.net/> project, and setting your
    <verbatim|PATH> accordingly.
  </itemize>

  <\with|font-series|bold>
    Optional Bits and Pieces
  </with>

  The Windows package contains all that's needed to run Pure programs with
  the interpreter. However, in order to be able to run the Pure batch
  compiler and to make full use of the Pure/C interface on Windows, you may
  need to install some third-party programming tools:

  <\itemize>
    <item><hlink|mingw|http://www.mingw.org/> is a full version of the GNU
    C/C++ compiler for Windows systems. You'll need this in order to create
    native executables and libraries with the Pure batch compiler. It is also
    needed for running the <with|font-series|bold|pure-gen> utility included
    in this package, which can be used to create Pure interfaces to C
    libraries from the corresponding C headers. And, last but not least you
    can also use mingw to compile the LLVM tools and the Pure interpreter
    yourself, if you prefer that.

    Using mingw 4.4 or later is recommended. There's an installer available
    at the mingw website, see <hlink|http://www.mingw.org/wiki/Getting_Started|http://www.mingw.org/wiki/Getting-Started>
    for details. You'll want to install both the C/C++ compilers and the MSYS
    environment. You'll also have to modify the <verbatim|PATH> environment
    variable so that it points to the directory containing the mingw
    binaries, usually <verbatim|c:\\mingw\\bin>.

    <item>The batch compiler also requires the LLVM toolchain for
    mingw32/x86, available from the <hlink|LLVM download
    page|http://llvm.org/releases>. In addition, in order to use the C/C++
    code inlining feature of the Pure interpreter, you'll need an
    LLVM-enabled C/C++ compiler such as <hlink|clang|http://clang.llvm.org/>.
    (That's pretty much the only option on Windows right now; at the time of
    this writing, the <hlink|dragonegg|http://dragonegg.llvm.org/> plugin for
    gcc hasn't been ported to Windows yet.)

    This Pure release has been built and tested with LLVM 3.5, so that is the
    version that you should get. A binary Windows release of clang 3.5 is
    available from the <hlink|LLVM download page|http://llvm.org/releases>,
    but unfortunately it lacks the LLVM toolchain needed by Pure's batch
    compiler. Thus you'll either have to compile LLVM+clang 3.5 yourself
    (which isn't that hard to do, once you have all the requisite tools
    installed), or use the precompiled binaries that we provide at the Pure
    website:

    <hlink|https://bitbucket.org/purelang/pure-lang/downloads/clang+llvm-3.5-x86-mingw32.zip|https://bitbucket.org/purelang/pure-lang/downloads/clang+llvm-3.5-x86-mingw32.zip>

    You should unpack this package (using, e.g.,
    <hlink|7-Zip|http://www.7-zip.org/>) to a directory on your harddisk
    (say, <verbatim|c:\\llvm>), and modify the <verbatim|PATH> environment
    variable so that it points to the <verbatim|bin> subdirectory of this
    folder.

    Please note that these binaries were compiled with mingw 4.4 and depend
    on some of its libraries, so mingw 4.4 needs to be installed to make them
    work.

    <item>Finally, the Pure program directory needs to be added to the gcc
    <verbatim|LIBRARY_PATH> environment variable, so that some
    Windows-specific addon libraries are found when linking compiled
    programs. This should be done automatically during installation, but it's
    a good idea to check the value of <verbatim|LIBRARY_PATH> after
    installation and edit it as needed.
  </itemize>

  Previous topic

  <hlink|Installing Pure (and LLVM)|install.tm>

  Next topic

  <hlink|Using PurePad|purepad.tm>

  <hlink|toc|#windows-toc> <hlink|index|genindex.tm>
  <hlink|modules|pure-modindex.tm> \| <hlink|next|purepad.tm> \|
  <hlink|previous|install.tm> \| <hlink|Pure Language and Library
  Documentation|index.tm>

  <copyright> Copyright 2009-2014, Albert Gr�f et al. Last updated on Sep
  18, 2014. Created using <hlink|Sphinx|http://sphinx.pocoo.org/> 1.1.3.
</body>
