
package Paws::EC2::CopyImage {
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SourceImageId => (is => 'ro', isa => 'Str', required => 1);
  has SourceRegion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CopyImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CopyImage - Arguments for method CopyImage on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyImage on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method CopyImage.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to CopyImage.

As an example:

  $service_obj->CopyImage(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 ClientToken => Str

  

Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see How to Ensure Idempotency in the
I<Amazon Elastic Compute Cloud User Guide for Linux>.










=head2 Description => Str

  

A description for the new AMI in the destination region.










=head2 DryRun => Bool

  

=head2 B<REQUIRED> Name => Str

  

The name of the new AMI in the destination region.










=head2 B<REQUIRED> SourceImageId => Str

  

The ID of the AMI to copy.










=head2 B<REQUIRED> SourceRegion => Str

  

The name of the region that contains the AMI to copy.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyImage in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

