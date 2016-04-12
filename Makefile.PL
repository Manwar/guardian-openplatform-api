use 5.008;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME               => 'Guardian::OpenPlatform::API',
    AUTHOR             => q{Dave Cross <davecross@cpan.org>},
    VERSION_FROM       => 'lib/Guardian/OpenPlatform/API.pm',
    ABSTRACT_FROM      => 'lib/Guardian/OpenPlatform/API.pm',
    LICENSE            => 'perl',
    MIN_PERL_VERSION   => 5.008,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES   => {
        'Test::More' => '1.001014',
    },
    PREREQ_PM            => {
        'LWP::UserAgent' => '2.023',
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Guardian-OpenPlatform-API-*' },
    (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            repository => {
                type => 'git',
                url  => 'https://github.com/manwar/guardian-openplatform-api.git',
                web  => 'https://github.com/manwar/guardian-openplatform-api',
            },
        }})
     : ()
    ),
);
