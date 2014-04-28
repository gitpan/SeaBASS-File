
BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.07

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/SeaBASS/File.pm',
    't/00_load.t',
    't/01_input_file_vs_scalar_ref.t',
    't/02_new_args.t',
    't/03_new_options.t',
    't/04_strict_read.t',
    't/05_headers.t',
    't/06_absolutely_required.t',
    't/07_all.t',
    't/08_next_and_seek.t',
    't/09_update.t',
    't/10_set.t',
    't/11_insert.t',
    't/12_remove.t',
    't/13_where.t',
    't/14_fields.t',
    't/15_write.t',
    't/16_ancillary.t',
    't/17_dupe_fields.t',
    't/18_get_all.t',
    't/19_preserve_header.t',
    't/samples/bats92.txt'
);

notabs_ok($_) foreach @files;
done_testing;
