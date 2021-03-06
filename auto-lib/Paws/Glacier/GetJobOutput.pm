
package Paws::Glacier::GetJobOutput {
  use Moose;
  has accountId => (is => 'ro', isa => 'Str', required => 1);
  has jobId => (is => 'ro', isa => 'Str', required => 1);
  has range => (is => 'ro', isa => 'Str');
  has vaultName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetJobOutput');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glacier::GetJobOutputOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetJobOutputResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::GetJobOutput - Arguments for method GetJobOutput on Paws::Glacier

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetJobOutput on the 
Amazon Glacier service. Use the attributes of this class
as arguments to method GetJobOutput.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to GetJobOutput.

As an example:

  $service_obj->GetJobOutput(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> accountId => Str

  

The C<AccountId> is the AWS Account ID. You can specify either the AWS
Account ID or optionally a '-', in which case Amazon Glacier uses the
AWS Account ID associated with the credentials used to sign the
request. If you specify your Account ID, do not include hyphens in it.










=head2 B<REQUIRED> jobId => Str

  

The job ID whose data is downloaded.










=head2 range => Str

  

The range of bytes to retrieve from the output. For example, if you
want to download the first 1,048,576 bytes, specify "Range:
bytes=0-1048575". By default, this operation downloads the entire
output.










=head2 B<REQUIRED> vaultName => Str

  

The name of the vault.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetJobOutput in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

