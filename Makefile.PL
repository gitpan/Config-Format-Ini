use 5.008008;
use inc::Module::Install;
name           'Config-Format-Ini'              ;
license        'perl'                           ;
all_from       'lib/Config/Format/Ini.pm'       ;
abstract_from  'lib/Config/Format/Ini.pm'       ;
no_index       'directory'   => 'examples'      ;
author         'Ioannis Tambouras <ioannis@cpan.org>';

requires
#     'Getopt::Compact'     => '0.04',
#	     'List::MoreUtils'     => '0.32',
#         'namespace::autoclean'=> '0.12',
#	     'List::Util'          => '1.23',
         'Attribute::Handlers' => 0,
	     'Parse::RecDescent'   => 0,
	     'File::Slurp'         => '9999.18',
;
test_requires 
              'Test::Pod'           => '1.45',
              'Test::Pod::Coverage' => '1.08',
              'Test::HasVersion'    => '0.012',
              'Test::CPAN::Meta'    => '0.18',
              'Test::Exception'     => '0.31',
              'Test::Distribution'  => '2.00';
              'Test::Dependencies'  => '0.12',
              'Test::MinimumVersion'=> '0.101080',
              'Test::Strict'        => '0.14', 
              'Test::Spelling'      => '0.15',
;
auto_install;
WriteAll;
