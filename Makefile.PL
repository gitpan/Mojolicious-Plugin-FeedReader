use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'Mojolicious::Plugin::FeedReader',
    VERSION_FROM => 'lib/Mojolicious/Plugin/FeedReader.pm',
    AUTHOR       => 'Dotan Dimet <dotan@corky.net>',
    PREREQ_PM    => {
        'Mojolicious' => '5.57',
        'HTTP::Date'  => '6.02',
        'Time::Zone'  => '2.2'
    },
    LICENSE      => 'artistic_2',
    ABSTRACT     => 'Mojolicious plugin to find and parse RSS & Atom feeds',
    META_MERGE   => {
    requires  => {perl => '5.010001'},
    resources => {
      license     => 'http://www.opensource.org/licenses/artistic-license-2.0',
      repository  => 'http://github.com/dotandimet/Mojolicious-Plugin-FeedReader',
      bugtracker  => 'http://github.com/dotandimet/Mojolicious-Plugin-FeedReader/issues'
    },
    no_index => {directory => ['t']}
  },
    test => { TESTS => 't/*.t' }
);
