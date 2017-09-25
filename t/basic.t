use Test2::V0;
use Test::Alien;
use Alien::OpenSSL;

alien_ok 'Alien::OpenSSL';

ffi_ok { symbols => ['OpenSSL_version_num'] }, with_subtest {
  my($ffi) = @_;
  my $get_version = $ffi->function(OpenSSL_version_num => [] => 'long');
  my $version = $get_version->call;
  diag "Got $version";
  ok $version;
};

done_testing;

