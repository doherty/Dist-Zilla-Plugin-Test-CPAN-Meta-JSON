package Dist::Zilla::Plugin::Test::CPAN::Meta::JSON;
use strict;
use warnings;
# ABSTRACT: release tests for your META.json
# VERSION

use Moose;
use Moose;
extends 'Dist::Zilla::Plugin::InlineFiles';

=head1 SYNOPSIS

In C<dist.ini>:

    [Test::CPAN::Meta::JSON]

=head1 DESCRIPTION

This is an extension of L<Dist::Zilla::Plugin::InlineFiles>, providing the
following file:

    xt/release/meta-json.t - a standard Test::CPAN::Meta::JSON test

See L<Test::CPAN::Meta::JSON> for what this test does.

=cut

__PACKAGE__->meta->make_immutable;
no Moose;

1;

=for test_synopsis
1;
__END__

=cut

__DATA__
__[ xt/release/meta-json.t ]__
#!perl

use Test::More;
eval 'use Test::CPAN::Meta::JSON';
plan skip_all => 'Test::CPAN::Meta::JSON required for testing META.json' if $@;
meta_json_ok();
