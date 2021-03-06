package Paws::CloudFront::DefaultCacheBehavior {
  use Moose;
  has AllowedMethods => (is => 'ro', isa => 'Paws::CloudFront::AllowedMethods');
  has ForwardedValues => (is => 'ro', isa => 'Paws::CloudFront::ForwardedValues', required => 1);
  has MinTTL => (is => 'ro', isa => 'Num', required => 1);
  has SmoothStreaming => (is => 'ro', isa => 'Bool');
  has TargetOriginId => (is => 'ro', isa => 'Str', required => 1);
  has TrustedSigners => (is => 'ro', isa => 'Paws::CloudFront::TrustedSigners', required => 1);
  has ViewerProtocolPolicy => (is => 'ro', isa => 'Str', required => 1);
}
1;
