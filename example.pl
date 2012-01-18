#!/usr/bin/perl
use strict;
use warnings;

use Geo::Distance::Google;
use Data::Dumper qw( Dumper );

my $geo = Geo::Distance::Google->new;

my $distance = $geo->distance(

    # sears tower... wacker tower whatever
    origins      => '233 S. Wacker Drive Chicago, Illinois 60606',
    destinations => '1600 Amphitheatre Parkway, Mountain View, CA'
);

printf "The distance between: %s and %s is %s\n",
  $distance->[0]->{origin_address},
  $distance->[0]->{destinations}->[0]->{address},
  $distance->[0]->{destinations}->[0]->{distance}->{text};

my $other = $geo->distance(
    origins      => '34.101063,-118.3385319',
    destinations => '34.1613743,-118.1676149'
);

print Dumper( $other ), "\n";

exit;
