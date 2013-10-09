#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;

use Spreadsheet::ParseXLSX;

my $wb = Spreadsheet::ParseXLSX->new->parse('t/data/bug-7.xlsx');
is($wb->worksheet_count, 3);

my $ws = $wb->worksheet(0);
is($ws->get_cell(0, 0)->value, "#N/A");

done_testing;
