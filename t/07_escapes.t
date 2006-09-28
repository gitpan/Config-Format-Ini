use Test::More qw(no_plan);
use Config::Format::Ini;
use File::Slurp qw(slurp);

my $dir  = $ENV{PWD} =~ m#\/t$#  ? './data' : 't/data';


my $b1 = { person  => { name  => [  'johnny'             ],
                        full  => [   'E.	Walker'  ],
                      },
};

my $res;

$res =  read_ini <$dir/escape0>;
is_deeply( $res, $b1 )  ;

