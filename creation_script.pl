################################################################################
# Description: Script de génération de cartouche
#
# Ident: "@(#) creation_script - 0.1 - 2016/01/19 - windows
#
# Usage         : 
# Remarque      :
#
# Suivi version :
#  V   | Date     | Auteur           | Description des modifications
# -----|----------|------------------|------------------------------------------
#  0.1 | 20160119 | tlacroix         | Creation de la premiere version
#
#
#   Pour toute modification incrementer le numero de version et changer la date
#
################################################################################
use strict;
use warnings;

# VARIABLES
my $path_repo = "C:\\Users\\Thomas\\Documents\\GitHub\\creation_script\\";
my $nom_script = "";
my $description_script = "";
my $date = "";
my $utilisateur = "";
my $modification_script = "";
my $choix = -1;
my $version_script = "0";
my $date_1 = "";
my $date_modif = "";
my $plateforme_script = 1;
my $utilisateur_script = "";
my $sec; my $min; my $hour; my $mday; my $mon; my $year; my $wday; my $yday; my $isdst;
my @months = qw( 01 02 03 04 05 06 07 08 09 10 11 12);
my @days = qw(Sun Mon Tue Wed Thu Fri Sat Sun);

($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();

# CORPS
do{
print "#################################\n";
print "# OUTIL DE GENERATION DE SCRIPT #\n";
print "#################################\n";
print "Que veux tu faire ?\n";
print "0. Abandonner\n";
print "1. Creer un script\n";
#print "2.Editer un script\n";
print "=> ";
$choix = <STDIN>;
}while($choix < 1 && $choix > 0);
if($choix == 0){
	die;
}elsif($choix == 1){
	print "Description du scripe: ";
	$description_script = <STDIN>;
	chomp($description_script);
	print "Nom du script: ";
	$nom_script = <STDIN>;
	chomp($nom_script);
	print "Version de creation: 0.1\n";
	$version_script = "0.1";
	$year = $year+1900;
	print "Date: $mday\/$months[$mon]\/$year\n";
	$date_1 = "$mday\/$months[$mon]\/$year";
	$date_modif = $year.$months[$mon].$mday;
	print "Plateforme: \n";
	print "\t 1. Windows\n";
	print "\t 2. Linux\n";
	do{
		print "[1] => ";
		$plateforme_script = <STDIN>;
	}while($plateforme_script < 1 && $plateforme_script > 2);
	if($plateforme_script == 1){
		$plateforme_script = "windows";
	}elsif($plateforme_script = 2){
		$plateforme_script = "linux";
	}
	print "Utilisateur: ";
	$utilisateur_script = <STDIN>;
	chomp($utilisateur_script);
	if(! -e $path_repo.$nom_script.".pl"){
		print $path_repo.$nom_script.".pl\n";
		open(SCRIPT, ">".$nom_script.".pl") or die "Impossible de creer le fichier $!";
		print SCRIPT "################################################################################\n";
		print SCRIPT "# Description: $description_script\n";
		print SCRIPT "# \n";
		print SCRIPT "# Ident: \"@(#) $nom_script - $version_script - $date_1 - $plateforme_script\n";
		print SCRIPT "# \n";
		print SCRIPT "# Usage         : \n";
		print SCRIPT "# Remarque      : \n";
		print SCRIPT "# \n";
		print SCRIPT "# Suivi version :\n";
		print SCRIPT "#  V   | Date     | Auteur           | Description des modifications\n";
		print SCRIPT "# -----|----------|------------------|------------------------------------------\n";
		print SCRIPT "#  $version_script | $date_modif | $utilisateur_script         | Creation de la premiere version\n";
		print SCRIPT "# \n";
		print SCRIPT "# \n";
		print SCRIPT "#   Pour toute modification incrementer le numero de version et changer la date\n";
		print SCRIPT "# \n";
		print SCRIPT "################################################################################\n"; 
		print SCRIPT "use strict;\n";
		print SCRIPT "use warnings;\n";
		print SCRIPT "\n";
		print SCRIPT "# VARIABLES\n";
		print SCRIPT "\n";
		print SCRIPT "\n";
		print SCRIPT "\n";
		print SCRIPT "# CORPS\n";
		print SCRIPT "\n";
		print SCRIPT "\n";
		print SCRIPT "\n";
		print SCRIPT "# FONCTIONS\n";
		print SCRIPT "\n";
		print SCRIPT "\n";
		print SCRIPT "\n";
		print SCRIPT "\n";
		print SCRIPT "\n";
		print SCRIPT "\n";
	}

}



# FONCTIONS

















