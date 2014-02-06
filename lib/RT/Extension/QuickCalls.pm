package RT::Extension::QuickCalls;

our $VERSION = '0.06';

use warnings;
use strict;
use Carp;


=head1 NAME

RT::Extension::QuickCalls - Quickly create tickets in specific queues with default values


=head1 SYNOPSIS

You will need to enable the new QuickCalls portlet with a line
like this in your RT_SiteConfig.pm file

    Set($HomepageComponents, [qw(QuickCreate Quicksearch MyAdminQueues MySupportQueues MyReminders
                                 RefreshHomepage QuickCalls)]);

This is the default portlet list with QuickCalls added to the end
People can then choose to add the portlet to their homepage
in Preferences -> RT at a glance

To set up your Quick Calls, you will want to specify a Name and a Queue
in the config file.  The Name will become the Subject of the task unless
you specify a Subject option.  You can add other Ticket options as needed,
such as Status.

    Set($QuickCalls,[{Name => "Foo", Queue => 'General', Status => 'resolved'},
                     {Name => "Bar", Queue => 'Queue2',  Status => 'resolved'}]);

After you have added QuickCalls to your home page, you will be able to select
one, click Create and be brought to the ticket creation page with multiple
fields pre-filled

=head1 INSTALLATION 

=over

=item C<perl Makefile.PL>

=item C<make>

=item C<make install>

May need root permissions

=item Edit your F</opt/rt4/etc/RT_SiteConfig.pm>

If you are using RT 4.2 or greater, add this line:

    Plugin('RT::Extension::QuickCalls');

For earlier releases of RT 4, add this line:

    Set(@Plugins, qw(RT::Extension::QuickCalls));

or add C<RT::Extension::QuickCalls> to your existing C<@Plugins> line.

=item Clear your mason cache

    rm -rf /opt/rt4/var/mason_data/obj

=item Restart your webserver

=back

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to
C<bug-rt-extension-quickcalls@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.


=head1 AUTHOR

Kevin Falcone


=head1 LICENCE AND COPYRIGHT

Copyright (c) 2007-2014, Best Practical Solutions, LLC.  All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.


=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.

=cut

1;
