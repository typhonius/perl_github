#!/usr/bin/perl

use HTTP::Request;
use LWP::UserAgent;

# Repo details
my $github_user = 'typhonius';
my $github_repo = 'perl_github';
my $domain = "https://api.github.com/repos/$github_user/$github_repo/issues";
#my $token = 'FILL THIS IN';

# Issue Details
my $title = 'nothing works';
my $body = 'everything am bug';

my $ua = LWP::UserAgent->new;
my $req = HTTP::Request->new(POST => $domain);
my $post_data = '{ "title": "' . $title . '", "body": "' . $body . '" }';
$req->content($post_data);
$req->header('Authorization' => "bearer " . $token);
my $res = $ua->request($req);

if ($res->is_success) {
  print $res->content;
}
else {
  print $res->content;
}
