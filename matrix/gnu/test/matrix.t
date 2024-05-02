#!/usr/bin/perl -w 

use Locale::gettext;
use Getopt::Long;
use File::Basename;
use File::Copy;
use File::Path;
use File::Spec;
use File::Temp;
use File::Find;
use Test;

my $prototype_dir = fileparse($RETURN_IN_ORDER[0]);
my $prototype_name = $prototype_dir;
my $prototype_file = $prototype_dir;
my $prototype_path = File::Temp->new();
my $prototype_file_path = $prototype_path->filename();
my $prototype_dir_path = File::Temp->new();
my $prototype_dir_file_path = $prototype_dir_path->filename();
my $prototype_file_dir = File::Temp->new();
my $prototype_file_dir_path = $prototype_file_dir->filename();
my $prototype_dir_file = $prototype_dir_file_path->filename();
my $prototype_file_dir_file = $prototype_file_dir_path->filename();
my $prototype_dir_file_dir = File::Temp->new();


$prototype_dir->mkdir(dirname($prototype_file_dir));
$prototype_file->copy(dirname($prototype_file_dir));

$prototype_dir->Test::ok->success("Successful copied $prototype_file");
$prototype_dir->Test::done(); # Successful copied $prototype_file
return $prototype_file;

__END__

=head1 NAME

Test::ok 
Test::done 

=head1 SYNOPSIS

use Test::ok;
use Test::Builder;
use Test::More;

Test::ok(1);

=head1 DESCRIPTION

Test::ok(1);

=head1 AUTHOR

<NAME>

=head1 SEE ALSO

L<Test::ok>
L<Test::skip>

=head1 AUTHOR

<NAME>

=head1 SEE ALSO

L<Test::ok>
L<Test::skip>

=head1 AUTHOR

<NAME>

=head1 SEE ALSO

L<Test::ok>
L<Test::skip>

=cut

