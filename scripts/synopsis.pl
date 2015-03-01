#!/usr/bin/env perl

use strict;
use warnings;

use XML::Tiny::Tree;

# ------------------------------------------------

my($input_file) = shift || die "Usage $0 file\n";
my($tree)       = XML::Tiny::Tree -> new
					(
						input_file        => $input_file,
						no_entity_parsing => 1,
					) -> convert;

print map("$_\n", @{$tree -> tree2string});
