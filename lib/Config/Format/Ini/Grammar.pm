package  Config::Format::Ini::Grammar;
use Parse::RecDescent;
use strict;

my $gram = <<'END_GRAMMAR' ;
{ my ($h,$p) ;}

    startrule : <skip:'[ \t]*'>   section(s) 
                { $h }

    section:    {$p={}} 
                title  "\n" pair(s?) 
                { $h->{$item[-3]}  = {%$p}} 
                | COMMENT(s)
                | BLANK(s)

    title:     '[' /\w+/ ']'      COM(?)
		{ $item[2] }


    pair:      KEY '=' VAL(s?)    COM(?)   "\n"
	       { $p->{ $item[1]}  = $item[3] }
	       { $item[1] } 
    pair:      COMMENT(s)  | BLANK(s)  
   #pair:      <resync:[^\n]*>


    VAL:       <perl_quotelike>
               <reject: ${item[1]}[1] ne '"' >
               { $item[1]->[2] }
    VAL:       /[^,;#\n]+/   
               { $item[1] =~ s/\s+$// ; $item[1] }
    VAL:      ',' VAL 
              {$item[2]} 

    KEY:      /\w+/  

    BLANK:     "\n"
    COM:        /^(?:[#;].*)/
    COMMENT:    COM "\n"

END_GRAMMAR

sub new { Parse::RecDescent->new( $gram ) }

1;
__END__
=head1 NAME

Config::Format::Ini::Grammar -  P:RD grammar for ini file format

