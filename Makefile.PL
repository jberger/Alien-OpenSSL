use ExtUtils::MakeMaker;
use Alien::Build::MM;
 
my $abmm = Alien::Build::MM->new;
 
WriteMakefile($abmm->mm_args(
  ABSTRACT => 'Discover or download and install openssl',
  DISTNAME => 'Alien-OpenSSL',
  NAME     => 'Alien::OpenSSL',
  VERSION_FROM => 'lib/Alien/OpenSSL.pm',
));
 
sub MY::postamble {
  $abmm->mm_postamble;
}
