$dbd_oracle_mm_opts = {
                        'OBJECT' => '$(O_FILES)',
                        'DIR' => [],
                        'LICENSE' => 'perl',
                        'dist' => {
                                    'SUFFIX' => 'gz',
                                    'COMPRESS' => 'gzip -v9',
                                    'DIST_DEFAULT' => 'clean distcheck disttest tardist',
                                    'PREOP' => '$(MAKE) -f Makefile.old distdir'
                                  },
                        'DEFINE' => ' -Wall -Wno-comment -DUTF8_SUPPORT -DORA_OCI_VERSION=\\"12.2.0.1.0\\" -DORA_OCI_102 -DORA_OCI_112',
                        'NAME' => 'DBD::Oracle',
                        'VERSION_FROM' => 'lib/DBD/Oracle.pm',
                        'PREREQ_PM' => {
                                         'DBI' => '1.623'
                                       },
                        'INC' => '-IC:/ora122instant64/sdk/include -IC:/ora122instant64/rdbms/demo -IC:\\strawberry\\perl\\vendor\\lib\\auto\\DBI',
                        'META_MERGE' => {
                                          'resources' => {
                                                           'homepage' => 'https://metacpan.org/pod/DBD::Oracle',
                                                           'repository' => {
                                                                             'web' => 'http://github.com/yanick/DBD-Oracle/tree',
                                                                             'url' => 'git://github.com/yanick/DBD-Oracle.git',
                                                                             'type' => 'git'
                                                                           },
                                                           'bugtracker' => 'https://github.com/perl5-dbi/DBD-Oracle/issues'
                                                         },
                                          'build_requires' => {
                                                                'Test::Simple' => '0.90',
                                                                'DBI' => '1.623',
                                                                'ExtUtils::MakeMaker' => 0
                                                              },
                                          'configure_requires' => {
                                                                    'DBI' => '1.623'
                                                                  }
                                        },
                        'ABSTRACT_FROM' => 'lib/DBD/Oracle.pm',
                        'AUTHOR' => 'Tim Bunce (dbi-users@perl.org)',
                        'LIBS' => [
                                    '-LC:/STRAWB~1/env/USERPR~1/.cpanm/work/1596394978.704/DBD-Oracle-1.80 -loci'
                                  ],
                        'clean' => {
                                     'FILES' => 'xstmp.c Oracle.xsi dll.base dll.exp sqlnet.log libOracle.def mk.pm DBD_ORA_OBJ.*'
                                   }
                      };
$dbd_oracle_mm_self = bless( {
                               'DEFINE_VERSION' => '-D$(VERSION_MACRO)=\\"$(VERSION)\\"',
                               'INSTALLARCHLIB' => 'C:\\strawberry\\perl\\lib',
                               'XS_DEFINE_VERSION' => '-D$(XS_VERSION_MACRO)=\\"$(XS_VERSION)\\"',
                               'INSTALLVENDORMAN1DIR' => '$(INSTALLMAN1DIR)',
                               'MKPATH' => '$(ABSPERLRUN) -MExtUtils::Command -e mkpath --',
                               'MAKE_APERL_FILE' => 'Makefile.aperl',
                               'INST_STATIC' => '$(INST_ARCHAUTODIR)\\$(BASEEXT)$(LIB_EXT)',
                               'INSTALLMAN3DIR' => 'none',
                               'DESTINSTALLVENDORARCH' => '$(DESTDIR)$(INSTALLVENDORARCH)',
                               'DLEXT' => 'xs.dll',
                               'HAS_LINK_CODE' => 1,
                               'ABSTRACT_FROM' => 'lib/DBD/Oracle.pm',
                               'MM_Win32_VERSION' => '7.46',
                               'PREFIX' => '$(VENDORPREFIX)',
                               'BASEEXT' => 'Oracle',
                               'INST_ARCHLIB' => 'blib\\arch',
                               'MAKEMAKER' => 'C:/strawberry/perl/lib/ExtUtils/MakeMaker.pm',
                               'DOC_INSTALL' => '$(ABSPERLRUN) -MExtUtils::Command::MM -e perllocal_install --',
                               'OBJECT' => '$(O_FILES)',
                               'MOD_INSTALL' => '$(ABSPERLRUN) -MExtUtils::Install -e "install([ from_to => {@ARGV}, verbose => \'$(VERBINST)\', uninstall_shadows => \'$(UNINST)\', dir_mode => \'$(PERM_DIR)\' ]);" --',
                               'CCDLFLAGS' => ' ',
                               'LDDLFLAGS' => '-mdll -s -L"C:\\strawberry\\perl\\lib\\CORE" -L"C:\\strawberry\\c\\lib"',
                               'DISTNAME' => 'DBD-Oracle',
                               'INSTALLBIN' => 'C:\\strawberry\\perl\\bin',
                               'C' => [
                                        'Oracle.c',
                                        'dbdimp.c',
                                        'oci8.c'
                                      ],
                               'FULLEXT' => 'DBD\\Oracle',
                               'MAKEFILE_OLD' => 'Makefile.old',
                               'LIBS' => $dbd_oracle_mm_opts->{'LIBS'},
                               'PERM_RWX' => 755,
                               'INST_ARCHAUTODIR' => '$(INST_ARCHLIB)\\auto\\$(FULLEXT)',
                               'ABSPERLRUNINST' => '$(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"',
                               'INSTALLVENDORARCH' => 'C:\\strawberry\\perl\\vendor\\lib',
                               'LIBC' => '',
                               'CC' => 'gcc',
                               'LD' => 'g++',
                               'PERLPREFIX' => 'C:\\strawberry\\perl',
                               'DIST_DEFAULT' => 'tardist',
                               'dist' => $dbd_oracle_mm_opts->{'dist'},
                               'VENDORARCHEXP' => 'C:\\strawberry\\perl\\vendor\\lib',
                               'PERL_CORE' => 0,
                               'INC' => '-IC:/ora122instant64/sdk/include -IC:/ora122instant64/rdbms/demo -IC:\\strawberry\\perl\\vendor\\lib\\auto\\DBI',
                               'LD_RUN_PATH' => '',
                               'DIST_CP' => 'best',
                               'CONFIG' => [
                                             'ar',
                                             'cc',
                                             'cccdlflags',
                                             'ccdlflags',
                                             'dlext',
                                             'dlsrc',
                                             'exe_ext',
                                             'full_ar',
                                             'ld',
                                             'lddlflags',
                                             'ldflags',
                                             'libc',
                                             'lib_ext',
                                             'obj_ext',
                                             'osname',
                                             'osvers',
                                             'ranlib',
                                             'sitelibexp',
                                             'sitearchexp',
                                             'so',
                                             'vendorarchexp',
                                             'vendorlibexp'
                                           ],
                               'AR_STATIC_ARGS' => 'cr',
                               'VERBINST' => 0,
                               'EQUALIZE_TIMESTAMP' => '$(ABSPERLRUN) -MExtUtils::Command -e eqtime --',
                               'PERLMAINCC' => '$(CC)',
                               'LDFROM' => '$(OBJECT)',
                               'VERSION' => '1.80',
                               'INST_BIN' => 'blib\\bin',
                               'SITEARCHEXP' => 'C:\\strawberry\\perl\\site\\lib',
                               'PERL_SRC' => undef,
                               'POSTOP' => '$(NOECHO) $(NOOP)',
                               'TEST_F' => '$(ABSPERLRUN) -MExtUtils::Command -e test_f --',
                               'UNINSTALL' => '$(ABSPERLRUN) -MExtUtils::Command::MM -e uninstall --',
                               'DESTINSTALLVENDORMAN3DIR' => '$(DESTDIR)$(INSTALLVENDORMAN3DIR)',
                               'PERM_RW' => 644,
                               'DIR' => $dbd_oracle_mm_opts->{'DIR'},
                               'INSTALLVENDORLIB' => 'C:\\strawberry\\perl\\vendor\\lib',
                               'XS_VERSION_MACRO' => 'XS_VERSION',
                               'INSTALLSITEBIN' => 'C:\\strawberry\\perl\\site\\bin',
                               'DESTINSTALLARCHLIB' => '$(DESTDIR)$(INSTALLARCHLIB)',
                               'INSTALLVENDORBIN' => 'C:\\strawberry\\perl\\bin',
                               'VERSION_SYM' => '1_80',
                               'clean' => $dbd_oracle_mm_opts->{'clean'},
                               'CCCDLFLAGS' => ' ',
                               'TO_UNIX' => '$(NOECHO) $(NOOP)',
                               'OBJ_EXT' => '.o',
                               'DESTINSTALLVENDORMAN1DIR' => '$(DESTDIR)$(INSTALLVENDORMAN1DIR)',
                               'MAN3SECTION' => 3,
                               'INST_DYNAMIC' => '$(INST_ARCHAUTODIR)\\$(DLBASE).$(DLEXT)',
                               'RANLIB' => 'rem',
                               'FULLPERLRUN' => '$(FULLPERL)',
                               'UMASK_NULL' => 'umask 0',
                               'NAME' => 'DBD::Oracle',
                               'INSTALLMAN1DIR' => 'none',
                               'MAN1SECTION' => 1,
                               'TRUE' => '$(ABSPERLRUN)  -e "exit 0" --',
                               'SO' => 'dll',
                               'NOECHO' => '@',
                               'USEMAKEFILE' => '-f',
                               'INST_MAN1DIR' => 'blib\\man1',
                               'AUTHOR' => [
                                             'Tim Bunce (dbi-users@perl.org)'
                                           ],
                               'LDFLAGS' => '-s -L"C:\\strawberry\\perl\\lib\\CORE" -L"C:\\strawberry\\c\\lib"',
                               'SKIPHASH' => {},
                               'PERL_ARCHIVE' => '$(PERL_INC)\\libperl532.a',
                               'OSVERS' => '10.0.19041.388',
                               'INSTALLPRIVLIB' => 'C:\\strawberry\\perl\\lib',
                               'LDLOADLIBS' => '"liboci.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libmoldname.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libkernel32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libuser32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libgdi32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libwinspool.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libcomdlg32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libadvapi32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libshell32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libole32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\liboleaut32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libnetapi32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libuuid.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libws2_32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libmpr.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libwinmm.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libversion.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libodbc32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libodbccp32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libcomctl32.a"',
                               'PREOP' => '$(NOECHO) $(NOOP)',
                               'PERL_ARCHIVEDEP' => '$(PERL_INCDEP)\\libperl532.a',
                               'EXPORT_LIST' => '$(BASEEXT).def',
                               'INST_BOOT' => '$(INST_ARCHAUTODIR)\\$(BASEEXT).bs',
                               'MM_REVISION' => 74600,
                               'PERL_LIB' => 'C:\\strawberry\\perl\\lib',
                               'PERL_INC' => 'C:\\strawberry\\perl\\lib\\CORE',
                               'DESTINSTALLBIN' => '$(DESTDIR)$(INSTALLBIN)',
                               'DESTINSTALLPRIVLIB' => '$(DESTDIR)$(INSTALLPRIVLIB)',
                               'DESTINSTALLSITEMAN3DIR' => '$(DESTDIR)$(INSTALLSITEMAN3DIR)',
                               'PL_FILES' => {},
                               'FULL_AR' => '',
                               'DESTINSTALLSITEBIN' => '$(DESTDIR)$(INSTALLSITEBIN)',
                               'FIRST_MAKEFILE' => 'Makefile',
                               'XS' => {
                                         'Oracle.xs' => 'Oracle.c'
                                       },
                               'INSTALLSCRIPT' => 'C:\\strawberry\\perl\\bin',
                               'H' => [
                                        'Oracle.h',
                                        'dbdimp.h',
                                        'dbivport.h',
                                        'ocitrace.h'
                                      ],
                               'ABSTRACT' => 'Oracle database driver for the DBI module',
                               'CHMOD' => '$(ABSPERLRUN) -MExtUtils::Command -e chmod --',
                               'DESTINSTALLVENDORBIN' => '$(DESTDIR)$(INSTALLVENDORBIN)',
                               'COMPRESS' => 'gzip --best',
                               'ZIPFLAGS' => '-r',
                               'PERL_INCDEP' => 'C:\\strawberry\\perl\\lib\\CORE',
                               'VENDORPREFIX' => 'C:\\strawberry\\perl\\vendor',
                               'TARFLAGS' => 'cvf',
                               'NOOP' => 'rem',
                               'MACROSTART' => '',
                               'TEST_REQUIRES' => {},
                               'PM' => {
                                         'lib/DBD/Oracle/Troubleshooting/Cygwin.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting\\Cygwin.pod',
                                         'lib/DBD/Oracle/Troubleshooting/Aix.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting\\Aix.pod',
                                         'mk.pm' => '$(INST_LIB)\\DBD\\mk.pm',
                                         'lib/DBD/Oracle/GetInfo.pm' => 'blib\\lib\\DBD\\Oracle\\GetInfo.pm',
                                         'lib/DBD/Oracle/Object.pm' => 'blib\\lib\\DBD\\Oracle\\Object.pm',
                                         'lib/DBD/Oracle/Troubleshooting/Sun.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting\\Sun.pod',
                                         'lib/DBD/Oracle/Troubleshooting.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting.pod',
                                         'lib/DBD/Oracle/Troubleshooting/Linux.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting\\Linux.pod',
                                         'lib/DBD/Oracle/Troubleshooting/Win64.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting\\Win64.pod',
                                         'lib/DBD/Oracle.pm' => 'blib\\lib\\DBD\\Oracle.pm',
                                         'lib/DBD/Oracle/Troubleshooting/Hpux.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting\\Hpux.pod',
                                         'lib/DBD/Oracle/Troubleshooting/Vms.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting\\Vms.pod',
                                         'lib/DBD/Oracle/Troubleshooting/Macos.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting\\Macos.pod',
                                         'lib/DBD/Oracle/Troubleshooting/Win32.pod' => 'blib\\lib\\DBD\\Oracle\\Troubleshooting\\Win32.pod'
                                       },
                               'RM_RF' => '$(ABSPERLRUN) -MExtUtils::Command -e rm_rf --',
                               'DESTINSTALLSCRIPT' => '$(DESTDIR)$(INSTALLSCRIPT)',
                               'MAKE' => 'gmake',
                               'O_FILES' => [
                                              'Oracle.o',
                                              'dbdimp.o',
                                              'oci8.o'
                                            ],
                               'DLBASE' => '$(BASEEXT)',
                               'PERL_ARCHLIBDEP' => 'C:\\strawberry\\perl\\lib',
                               'ABSPERLRUN' => '$(ABSPERL)',
                               'CI' => 'ci -u',
                               'ABSPERL' => '$(PERL)',
                               'INSTALLVENDORSCRIPT' => 'C:\\strawberry\\perl\\bin',
                               'INST_MAN3DIR' => 'blib\\man3',
                               'PERM_DIR' => 755,
                               'EXTRALIBS' => '"liboci.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libmoldname.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libkernel32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libuser32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libgdi32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libwinspool.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libcomdlg32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libadvapi32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libshell32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libole32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\liboleaut32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libnetapi32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libuuid.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libws2_32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libmpr.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libwinmm.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libversion.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libodbc32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libodbccp32.a" "C:\\strawberry\\c\\x86_64-w64-mingw32\\lib\\libcomctl32.a"',
                               'MAKEFILE' => 'Makefile',
                               'INSTALLVENDORMAN3DIR' => '$(INSTALLMAN3DIR)',
                               'VENDORLIBEXP' => 'C:\\strawberry\\perl\\vendor\\lib',
                               'DESTINSTALLVENDORSCRIPT' => '$(DESTDIR)$(INSTALLVENDORSCRIPT)',
                               'INST_ARCHLIBDIR' => '$(INST_ARCHLIB)\\DBD',
                               'RM_F' => '$(ABSPERLRUN) -MExtUtils::Command -e rm_f --',
                               'TEST_S' => '$(ABSPERLRUN) -MExtUtils::Command::MM -e test_s --',
                               'INSTALLSITELIB' => 'C:\\strawberry\\perl\\site\\lib',
                               'ZIP' => 'zip',
                               'DEV_NULL' => '> NUL',
                               'DESTINSTALLSITEMAN1DIR' => '$(DESTDIR)$(INSTALLSITEMAN1DIR)',
                               'INSTALLSITESCRIPT' => 'C:\\strawberry\\perl\\site\\bin',
                               'DESTINSTALLVENDORLIB' => '$(DESTDIR)$(INSTALLVENDORLIB)',
                               'MM_VERSION' => '7.46',
                               'MAN3PODS' => {},
                               'INST_AUTODIR' => '$(INST_LIB)\\auto\\$(FULLEXT)',
                               'TAR' => 'tar',
                               'INSTALLSITEARCH' => 'C:\\strawberry\\perl\\site\\lib',
                               'SHAR' => 'shar',
                               'FULLPERLRUNINST' => '$(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"',
                               'UNINST' => '1',
                               'MV' => '$(ABSPERLRUN) -MExtUtils::Command -e mv --',
                               'ARGS' => {
                                           'DIR' => $dbd_oracle_mm_opts->{'DIR'},
                                           'OBJECT' => '$(O_FILES)',
                                           'LICENSE' => 'perl',
                                           'DEFINE' => ' -Wall -Wno-comment -DUTF8_SUPPORT -DORA_OCI_VERSION=\\"12.2.0.1.0\\" -DORA_OCI_102 -DORA_OCI_112',
                                           'NAME' => 'DBD::Oracle',
                                           'clean' => $dbd_oracle_mm_opts->{'clean'},
                                           'META_MERGE' => $dbd_oracle_mm_opts->{'META_MERGE'},
                                           'VERSION_FROM' => 'lib/DBD/Oracle.pm',
                                           'INSTALLDIRS' => 'vendor',
                                           'PREREQ_PM' => $dbd_oracle_mm_opts->{'PREREQ_PM'},
                                           'INC' => '-IC:/ora122instant64/sdk/include -IC:/ora122instant64/rdbms/demo -IC:\\strawberry\\perl\\vendor\\lib\\auto\\DBI',
                                           'dist' => $dbd_oracle_mm_opts->{'dist'},
                                           'LIBS' => $dbd_oracle_mm_opts->{'LIBS'},
                                           'ABSTRACT_FROM' => 'lib/DBD/Oracle.pm',
                                           'UNINST' => '1',
                                           'AUTHOR' => $dbd_oracle_mm_self->{'AUTHOR'}
                                         },
                               'BUILD_REQUIRES' => {},
                               'AR' => 'ar',
                               'DEFINE' => ' -Wall -Wno-comment -DUTF8_SUPPORT -DORA_OCI_VERSION=\\"12.2.0.1.0\\" -DORA_OCI_102 -DORA_OCI_112',
                               'MAP_TARGET' => 'perl',
                               'NAME_SYM' => 'DBD_Oracle',
                               'PERL_ARCHLIB' => 'C:\\strawberry\\perl\\lib',
                               'ECHO' => '$(ABSPERLRUN) -l -e "binmode STDOUT, qq{:raw}; print qq{@ARGV}" --',
                               'DESTINSTALLSITELIB' => '$(DESTDIR)$(INSTALLSITELIB)',
                               'INSTALLDIRS' => 'vendor',
                               'DISTVNAME' => 'DBD-Oracle-1.80',
                               'DESTINSTALLSITESCRIPT' => '$(DESTDIR)$(INSTALLSITESCRIPT)',
                               'EXE_EXT' => '.exe',
                               'MAN1PODS' => {},
                               'PMLIBDIRS' => [
                                                'lib'
                                              ],
                               'DESTINSTALLSITEARCH' => '$(DESTDIR)$(INSTALLSITEARCH)',
                               'FULLPERL' => '"C:\\strawberry\\perl\\bin\\perl.exe"',
                               'FIXIN' => 'pl2bat.bat',
                               'LIB_EXT' => '.a',
                               'MAN3EXT' => '3',
                               'WARN_IF_OLD_PACKLIST' => '$(ABSPERLRUN) -MExtUtils::Command::MM -e warn_if_old_packlist --',
                               'PREREQ_PM' => {
                                                'DBI' => '1.623'
                                              },
                               'DIRFILESEP' => '/',
                               'CONFIGURE_REQUIRES' => {},
                               'DESTINSTALLMAN3DIR' => '$(DESTDIR)$(INSTALLMAN3DIR)',
                               'BSLOADLIBS' => '',
                               'XS_VERSION' => '1.80',
                               'PERL' => '"C:\\strawberry\\perl\\bin\\perl.exe"',
                               'LICENSE' => 'perl',
                               'DESTINSTALLMAN1DIR' => '$(DESTDIR)$(INSTALLMAN1DIR)',
                               'INST_LIB' => 'blib\\lib',
                               'CP' => '$(ABSPERLRUN) -MExtUtils::Command -e cp --',
                               'OSNAME' => 'MSWin32',
                               'BOOTDEP' => '',
                               'CP_NONEMPTY' => '$(ABSPERLRUN) -MExtUtils::Command::MM -e cp_nonempty --',
                               'PERLRUNINST' => '$(PERLRUN) "-I$(INST_ARCHLIB)" "-I$(INST_LIB)"',
                               'MAN1EXT' => '1',
                               'PARENT_NAME' => 'DBD',
                               'ECHO_N' => '$(ABSPERLRUN)  -e "print qq{@ARGV}" --',
                               'DLSRC' => 'dl_win32.xs',
                               'SITEPREFIX' => 'C:\\strawberry\\perl\\site',
                               'FALSE' => '$(ABSPERLRUN)  -e "exit 1" --',
                               'PERLRUN' => '$(PERL)',
                               'MACROEND' => '',
                               'TOUCH' => '$(ABSPERLRUN) -MExtUtils::Command -e touch --',
                               'VERSION_MACRO' => 'VERSION',
                               'RESULT' => [
                                             '# This Makefile is for the DBD::Oracle extension to perl.
#
# It was generated automatically by MakeMaker version
# 7.46 (Revision: 74600) from the contents of
# Makefile.PL. Don\'t edit this file, edit Makefile.PL instead.
#
#       ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: ()
#
',
                                             '#   MakeMaker Parameters:
',
                                             '#     ABSTRACT_FROM => q[lib/DBD/Oracle.pm]',
                                             '#     AUTHOR => [q[Tim Bunce (dbi-users@perl.org)]]',
                                             '#     BUILD_REQUIRES => {  }',
                                             '#     CONFIGURE_REQUIRES => {  }',
                                             '#     DEFINE => q[ -Wall -Wno-comment -DUTF8_SUPPORT -DORA_OCI_VERSION=\\"12.2.0.1.0\\" -DORA_OCI_102 -DORA_OCI_112]',
                                             '#     DIR => []',
                                             '#     INC => q[-IC:/ora122instant64/sdk/include -IC:/ora122instant64/rdbms/demo -IC:\\strawberry\\perl\\vendor\\lib\\auto\\DBI]',
                                             '#     LIBS => [q[-LC:/STRAWB~1/env/USERPR~1/.cpanm/work/1596394978.704/DBD-Oracle-1.80 -loci]]',
                                             '#     LICENSE => q[perl]',
                                             '#     META_MERGE => { build_requires=>{ DBI=>q[1.623], ExtUtils::MakeMaker=>q[0], Test::Simple=>q[0.90] }, configure_requires=>{ DBI=>q[1.623] }, resources=>{ bugtracker=>q[https://github.com/perl5-dbi/DBD-Oracle/issues], homepage=>q[https://metacpan.org/pod/DBD::Oracle], repository=>{ type=>q[git], url=>q[git://github.com/yanick/DBD-Oracle.git], web=>q[http://github.com/yanick/DBD-Oracle/tree] } } }',
                                             '#     NAME => q[DBD::Oracle]',
                                             '#     OBJECT => q[$(O_FILES)]',
                                             '#     PREREQ_PM => { DBI=>q[1.623] }',
                                             '#     TEST_REQUIRES => {  }',
                                             '#     VERSION_FROM => q[lib/DBD/Oracle.pm]',
                                             '#     clean => { FILES=>q[xstmp.c Oracle.xsi dll.base dll.exp sqlnet.log libOracle.def mk.pm DBD_ORA_OBJ.*] }',
                                             '#     dist => { COMPRESS=>q[gzip -v9], DIST_DEFAULT=>q[clean distcheck disttest tardist], PREOP=>q[$(MAKE) -f Makefile.old distdir], SUFFIX=>q[gz] }',
                                             '
# --- MakeMaker post_initialize section:'
                                           ],
                               'INST_SCRIPT' => 'blib\\script',
                               'META_MERGE' => $dbd_oracle_mm_opts->{'META_MERGE'},
                               'PMLIBPARENTDIRS' => [
                                                      'lib'
                                                    ],
                               'DESTDIR' => '',
                               'LIBPERL_A' => 'libperl.a',
                               'LINKTYPE' => 'dynamic',
                               'VERSION_FROM' => 'lib/DBD/Oracle.pm',
                               'INSTALLSITEMAN1DIR' => '$(INSTALLMAN1DIR)',
                               'PERL_ARCHIVE_AFTER' => '',
                               'SITELIBEXP' => 'C:\\strawberry\\perl\\site\\lib',
                               'SUFFIX' => '.gz',
                               'INSTALLSITEMAN3DIR' => '$(INSTALLMAN3DIR)',
                               'INST_LIBDIR' => '$(INST_LIB)\\DBD',
                               'RCS_LABEL' => 'rcs -Nv$(VERSION_SYM): -q'
                             }, 'PACK001' );
