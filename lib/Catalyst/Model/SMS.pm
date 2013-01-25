package Catalyst::Model::SMS;
use Moose;
use SMS::Send;
extends 'Catalyst::Model::Adaptor';

__PACKAGE__->config( class => 'SMS::Send' );

has driver => (
    is => 'ro',
    isa => 'Str',
    default => 'Test',
);

sub mangle_arguments {
    my ( $self, $args ) = @_;

    my $driver = delete $args->{driver} || $self->driver;
    return $driver, %$args;
}

__PACKAGE__->meta->make_immutable;
1;

=head1 NAME

Catalyst::Model::SMS - Catalyst Model for SMS::Send

=head1 DESCRIPTION

L<Catalyst::Model::SMS> is a thin proxy around SMS::Send. It can
be initialized using the Catalyst configuration file or method. The
following parameters are currently recognized:

=head1 AUTHOR

Martin Atukunda, <matlads@cpan.org>

=head1 COPYRIGHT

Copyright 2013 the above author(s).

=head1 LICENSE

This sofware is free software, and is licensed under the same terms as perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
