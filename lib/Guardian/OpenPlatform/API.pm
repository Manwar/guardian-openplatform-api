package Guardian::OpenPlatform::API;

use 5.006000;

use Moose;
use LWP;
use Carp;

our $VERSION = '0.01';

my $base_url = 'http://api.gusrdianapis.com/';

has 'ua' => (
    is => 'rw',
    isa => 'LWP::UserAgent',
    );

has 'api_key' => (
    is => 'rw',
    isa => 'Str',
    required => 1,
    );

has 'format' => (
    is => 'rw',
    isa => 'Str',
    default => 'json',
    );

sub BUILD {
    my $self = shift;

    $self->{ua} = LWP::UserAgent->new;
}

1;
