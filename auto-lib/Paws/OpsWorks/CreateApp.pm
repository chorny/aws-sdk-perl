
package Paws::OpsWorks::CreateApp {
  use Moose;
  has AppSource => (is => 'ro', isa => 'Paws::OpsWorks::Source');
  has Attributes => (is => 'ro', isa => 'Paws::OpsWorks::AppAttributes');
  has DataSources => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::DataSource]');
  has Description => (is => 'ro', isa => 'Str');
  has Domains => (is => 'ro', isa => 'ArrayRef[Str]');
  has EnableSsl => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Shortname => (is => 'ro', isa => 'Str');
  has SslConfiguration => (is => 'ro', isa => 'Paws::OpsWorks::SslConfiguration');
  has StackId => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::CreateAppResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CreateApp - Arguments for method CreateApp on Paws::OpsWorks

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApp on the 
AWS OpsWorks service. Use the attributes of this class
as arguments to method CreateApp.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to CreateApp.

As an example:

  $service_obj->CreateApp(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 AppSource => Paws::OpsWorks::Source

  

A C<Source> object that specifies the app repository.










=head2 Attributes => Paws::OpsWorks::AppAttributes

  

One or more user-defined key/value pairs to be added to the stack
attributes.










=head2 DataSources => ArrayRef[Paws::OpsWorks::DataSource]

  

The app's data source.










=head2 Description => Str

  

A description of the app.










=head2 Domains => ArrayRef[Str]

  

The app virtual host settings, with multiple domains separated by
commas. For example: C<'www.example.com, example.com'>










=head2 EnableSsl => Bool

  

Whether to enable SSL for the app.










=head2 B<REQUIRED> Name => Str

  

The app name.










=head2 Shortname => Str

  

The app's short name.










=head2 SslConfiguration => Paws::OpsWorks::SslConfiguration

  

An C<SslConfiguration> object with the SSL configuration.










=head2 B<REQUIRED> StackId => Str

  

The stack ID.










=head2 B<REQUIRED> Type => Str

  

The app type. Each supported type is associated with a particular
layer. For example, PHP applications are associated with a PHP layer.
AWS OpsWorks deploys an application to those instances that are members
of the corresponding layer.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for CreateApp in Paws::OpsWorks

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
