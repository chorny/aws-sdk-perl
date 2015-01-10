
package Paws::CloudHSM::ModifyHapgResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has HapgArn => (is => 'ro', isa => 'Str');

}

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::ModifyHapgResponse

=head1 ATTRIBUTES

=head2 HapgArn => Str

  

The ARN of the high-availability partition group.











=cut

1;