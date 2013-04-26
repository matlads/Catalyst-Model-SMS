#!/usr/bin/env perl

use strict;
use warnings;

BEGIN {
    local $ENV{CATALYST_SCRIPT_GEN} = 40;
}

use Catalyst::ScriptRunner;
Catalyst::ScriptRunner->run( 'TestApp', 'Server' );

1;
