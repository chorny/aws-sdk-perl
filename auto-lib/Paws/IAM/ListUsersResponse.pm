
package Paws::IAM::ListUsersResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::IAM::User]', required => 1);

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListUsersResponse

=head1 ATTRIBUTES

=head2 IsTruncated => Bool

  

A flag that indicates whether there are more user names to list. If
your results were truncated, you can make a subsequent pagination
request using the C<Marker> request parameter to retrieve more users in
the list.









=head2 Marker => Str

  

If C<IsTruncated> is C<true>, this element is present and contains the
value to use for the C<Marker> parameter in a subsequent pagination
request.









=head2 B<REQUIRED> Users => ArrayRef[Paws::IAM::User]

  

A list of users.











=cut

