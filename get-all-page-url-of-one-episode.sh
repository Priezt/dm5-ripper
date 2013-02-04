#!/usr/bin/env perl

$episode_first_url = shift @ARGV;
$page_count = `./get-page-count-of-one-episode.sh $episode_first_url`;
chomp($page_count);
print $episode_first_url."\n";
for my $n (2..$page_count){
	$_ = $episode_first_url;
	s/\/$/-p$n\//;
	print;
	print "\n";
}
