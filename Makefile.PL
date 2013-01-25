
use strict;
use warnings;

use 5.008;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Object-oriented interface for reading/writing SeaBASS files",
  "AUTHOR" => "Jason Lefler <jason.t.lefler\@nasa.gov>",
  "BUILD_REQUIRES" => {
    "Clone" => 0,
    "Test::More" => 0,
    "Test::Trap" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "SeaBASS-File",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "SeaBASS::File",
  "PREREQ_PM" => {
    "Carp" => 0,
    "Date::Calc" => 0,
    "Exporter" => 0,
    "Fcntl" => 0,
    "List::MoreUtils" => 0,
    "Scalar::Util" => 0,
    "constant" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.130250",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



