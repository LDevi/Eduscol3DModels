
distance_premier_trou = 40;
espacement_entre_trous = 15;
angle_deux_plaques=90;
largeur_plaque=70;
angle_support_terre=23.5;
taille_tube=30;
diametre_trou_lumiere=4;

rotate([angle_deux_plaques, 0, 0]) {
    cube([largeur_plaque, 110, 3.3]); 
    translate([35, 80, -26]) {
         rotate([angle_support_terre,0,0]){
 difference(){         
cylinder(taille_tube, 5, 4);
cylinder(taille_tube, 3, 2);
            }
            }
     }
}

difference() {
cube([largeur_plaque, 150, 2]);
 translate([35, 150-distance_premier_trou, 0]) {
cylinder(3, diametre_trou_lumiere, diametre_trou_lumiere);
     }
      translate([35, 150-distance_premier_trou-espacement_entre_trous, 0]) {
cylinder(3, diametre_trou_lumiere, diametre_trou_lumiere);
     }
      translate([35, 150-distance_premier_trou-espacement_entre_trous-espacement_entre_trous, 0]) {
cylinder(3, diametre_trou_lumiere, diametre_trou_lumiere);
     }
}



