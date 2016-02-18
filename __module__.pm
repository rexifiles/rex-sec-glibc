package Rex::Ossec::Base; 
use Rex -base;

desc 'update glibc';
task 'setup', sub { 
	
	update_package_db;

	pkg "libc6",
		ensure => "2.19-18+deb8u3",
	 	on_change => sub { say "package was installed/updated"; };

	pkg "libc6-bin",
		ensure => "2.19-18+deb8u3",
	 	on_change => sub { say "package was installed/updated"; };

	pkg "locales",
		ensure => "2.19-18+deb8u3",
	 	on_change => sub { say "package was installed/updated"; };

 };

	unless ($server) {
		say "No server defined. Define server=10.10.10.10";
		exit 1;
	};
};

desc 'Remove ossec agent';
task 'check', sub {

	for my $pkg (installed_packages()) {
		if ( $pkg->{"name"} == "libc6" ) {
			say "name    : " . $pkg->{"name"};
			say "  version: " . $pkg->{"version"};
		}
	}
}