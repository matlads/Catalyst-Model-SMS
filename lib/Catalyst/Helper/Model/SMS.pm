package Catalyst::Helper::Model::SMS;

use strict;

# ABSTRACT: Catalyst Helper for SMS::Send Models

our $VERSION = '0.01';

=head1 NAME

Catalyst::Helper::Model::SMS - Helper for SMS::Send based Models

=head1 SYNOPSIS

  script/create.pl model SMS SMS

=head1 DESCRIPTION

Helper for SMS::Send Model.

=head2 METHODS

=over 4

=item mk_compclass

Makes a main model class

=back 

=cut

sub mk_compclass {
    my ( $self, $helper ) = @_;
    my $file = $helper->{file};
    $helper->render_file( 'compclass', $file );
    return 1;
}

=head1 SEE ALSO

L<Catalyst::Manual>, L<Catalyst::Test>, L<Catalyst::Request>,
L<Catalyst::Response>, L<Catalyst::Helper>

=head1 AUTHOR

Martin Atukunda, C<matlads@cpan.org>

=head1 LICENSE

This library is free software . You can redistribute it and/or modify
it under the same terms as perl itself.

=cut

1;
__DATA__

=begin pod_to_ignore

__compclass__
package [% class %];

use Moose;
use namespace::autoclean;

extends 'Catalyst::Model::SMS';

__PACKAGE__->config(
  driver  => 'Test',
  args    => {},
);

__PACKAGE__->meta->make_immutable;

1;

=head1 NAME

[% class %] - SMS Model Class

=head1 SYNOPSIS

See L<[% app %]>

=head1 DESCRIPTION

SMS Model Class.

=head1 AUTHOR

[% author %]

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
