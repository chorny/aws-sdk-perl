
package Paws::EC2::DescribeVpcClassicLinkResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has Vpcs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VpcClassicLink]', traits => ['Unwrapped'], xmlname => 'vpcSet');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcClassicLinkResult

=head1 ATTRIBUTES

=head2 Vpcs => ArrayRef[Paws::EC2::VpcClassicLink]

  

The ClassicLink status of one or more VPCs.











=cut
