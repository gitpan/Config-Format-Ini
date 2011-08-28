use Module::Build;
my $b= Module::Build->new(
        module_name        => 'Config::Format::Ini',
        dist_version_from  => 'lib/Config/Format/Ini.pm',
        dist_author        => 'Ioannis Tambouras <ioannis@cpan.org>',
        requires           => {  perl                => '5.008',
                                'Attribute::Handlers'=>  0 ,
                                'Parse::RecDescent'  =>  0 ,
                                'File::Slurp'        =>  0 ,
                              },
        recommends         => { 'Test::More'         => 0,
                                'Test::Exception'    => 0,
                                'Test::Pod::Coverage'=> '1.0',
                                'Test::Pod'          => 0,
								'Test::HasVersion'    => '0.012',
								'Test::CPAN::Meta'    => '0.18',
								'Test::Exception'     => '0.31',
								'Test::Distribution'  => '2.00',
								'Test::Dependencies'  => '0.12',
								'Test::MinimumVersion'=> '0.101080',
								'Test::Strict'        => '0.14',
								'Test::Spelling'      => '0.15',
                              },
        license            => 'perl',
        #create_makefile_pl=> 'traditional',
        #create_readme     => 1,
);

$b->create_build_script;
