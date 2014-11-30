
package Paws::Config::PutConfigurationRecorder {
  use Moose;
  has ConfigurationRecorder => (is => 'ro', isa => 'Paws::Config::ConfigurationRecorder', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutConfigurationRecorder');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutConfigurationRecorder - Arguments for method PutConfigurationRecorder on Paws::Config

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutConfigurationRecorder on the 
AWS Config service. Use the attributes of this class
as arguments to method PutConfigurationRecorder.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to PutConfigurationRecorder.

As an example:

  $service_obj->PutConfigurationRecorder(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> ConfigurationRecorder => Paws::Config::ConfigurationRecorder

  

The configuration recorder object that records each configuration
change made to the resources.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for PutConfigurationRecorder in Paws::Config

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
