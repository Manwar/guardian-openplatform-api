use Test::More 'no_plan';

BEGIN { use_ok('Guardian::OpenPlatform::API') };

ok(my $client = Guardian::OpenPlatform::API->new(
  api_key => $ENV{GUARDIAN_API_KEY},
), 'Got client');
isa_ok($client, 'Guardian::OpenPlatform::API');

is($client->format, 'json', 'Default format correct');
isa_ok($client->ua, 'LWP::UserAgent');
is($client->api_key, $ENV{GUARDIAN_API_KEY}, 'API key correct');
