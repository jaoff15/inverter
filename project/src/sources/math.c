/* Includes */
#include "../headers/math.h"

/* Constants */
const double sinusValues[] = {
0,0.0174524064372835,0.0348994967025010,0.0523359562429438,0.0697564737441253,0.0871557427476582,0.104528463267653,0.121869343405147,0.139173100960065,0.156434465040231,0.173648177666930,0.190808995376545,0.207911690817759,0.224951054343865,0.241921895599668,0.258819045102521,0.275637355816999,0.292371704722737,0.309016994374947,0.325568154457157,0.342020143325669,0.358367949545300,0.374606593415912,0.390731128489274,0.406736643075800,0.422618261740699,0.438371146789077,0.453990499739547,0.469471562785891,0.484809620246337,0.500000000000000,0.515038074910054,0.529919264233205,0.544639035015027,0.559192903470747,0.573576436351046,0.587785252292473,0.601815023152048,0.615661475325658,0.629320391049837,0.642787609686539,0.656059028990507,0.669130606358858,0.681998360062499,0.694658370458997,0.707106781186548,0.719339800338651,0.731353701619171,0.743144825477394,0.754709580222772,0.766044443118978,0.777145961456971,0.788010753606722,0.798635510047293,0.809016994374948,0.819152044288992,0.829037572555042,0.838670567945424,0.848048096156426,0.857167300702112,0.866025403784439,0.874619707139396,0.882947592858927,0.891006524188368,0.898794046299167,0.906307787036650,0.913545457642601,0.920504853452440,0.927183854566787,0.933580426497202,0.939692620785908,0.945518575599317,0.951056516295154,0.956304755963035,0.961261695938319,0.965925826289068,0.970295726275997,0.974370064785235,0.978147600733806,0.981627183447664,0.984807753012208,0.987688340595138,0.990268068741570,0.992546151641322,0.994521895368273,0.996194698091746,0.997564050259824,0.998629534754574,0.999390827019096,0.999847695156391,1,0.999847695156391,0.999390827019096,0.998629534754574,0.997564050259824,0.996194698091746,0.994521895368273,0.992546151641322,0.990268068741570,0.987688340595138,0.984807753012208,0.981627183447664,0.978147600733806,0.974370064785235,0.970295726275997,0.965925826289068,0.961261695938319,0.956304755963036,0.951056516295154,0.945518575599317,0.939692620785908,0.933580426497202,0.927183854566787,0.920504853452440,0.913545457642601,0.906307787036650,0.898794046299167,0.891006524188368,0.882947592858927,0.874619707139396,0.866025403784439,0.857167300702112,0.848048096156426,0.838670567945424,0.829037572555042,0.819152044288992,0.809016994374948,0.798635510047293,0.788010753606722,0.777145961456971,0.766044443118978,0.754709580222772,0.743144825477394,0.731353701619171,0.719339800338651,0.707106781186548,0.694658370458997,0.681998360062499,0.669130606358858,0.656059028990507,0.642787609686540,0.629320391049837,0.615661475325658,0.601815023152048,0.587785252292473,0.573576436351046,0.559192903470747,0.544639035015027,0.529919264233205,0.515038074910054,0.500000000000000,0.484809620246337,0.469471562785891,0.453990499739547,0.438371146789077,0.422618261740700,0.406736643075800,0.390731128489274,0.374606593415912,0.358367949545300,0.342020143325669,0.325568154457157,0.309016994374948,0.292371704722737,0.275637355816999,0.258819045102521,0.241921895599668,0.224951054343865,0.207911690817759,0.190808995376545,0.173648177666930,0.156434465040231,0.139173100960065,0.121869343405148,0.104528463267654,0.0871557427476582,0.0697564737441255,0.0523359562429438,0.0348994967025011,0.0174524064372834,1.22464679914735e-16,-0.0174524064372836,-0.0348994967025009,-0.0523359562429436,-0.0697564737441253,-0.0871557427476579,-0.104528463267654,-0.121869343405147,-0.139173100960066,-0.156434465040231,-0.173648177666930,-0.190808995376545,-0.207911690817760,-0.224951054343865,-0.241921895599668,-0.258819045102521,-0.275637355816999,-0.292371704722737,-0.309016994374947,-0.325568154457157,-0.342020143325669,-0.358367949545300,-0.374606593415912,-0.390731128489274,-0.406736643075800,-0.422618261740699,-0.438371146789077,-0.453990499739547,-0.469471562785891,-0.484809620246337,-0.500000000000000,-0.515038074910054,-0.529919264233205,-0.544639035015027,-0.559192903470747,-0.573576436351046,-0.587785252292473,-0.601815023152048,-0.615661475325658,-0.629320391049838,-0.642787609686539,-0.656059028990507,-0.669130606358858,-0.681998360062498,-0.694658370458997,-0.707106781186548,-0.719339800338651,-0.731353701619171,-0.743144825477394,-0.754709580222772,-0.766044443118978,-0.777145961456971,-0.788010753606722,-0.798635510047293,-0.809016994374947,-0.819152044288992,-0.829037572555042,-0.838670567945424,-0.848048096156426,-0.857167300702112,-0.866025403784439,-0.874619707139396,-0.882947592858927,-0.891006524188368,-0.898794046299167,-0.906307787036650,-0.913545457642601,-0.920504853452440,-0.927183854566787,-0.933580426497202,-0.939692620785908,-0.945518575599317,-0.951056516295154,-0.956304755963035,-0.961261695938319,-0.965925826289068,-0.970295726275997,-0.974370064785235,-0.978147600733806,-0.981627183447664,-0.984807753012208,-0.987688340595138,-0.990268068741570,-0.992546151641322,-0.994521895368273,-0.996194698091746,-0.997564050259824,-0.998629534754574,-0.999390827019096,-0.999847695156391,-1,-0.999847695156391,-0.999390827019096,-0.998629534754574,-0.997564050259824,-0.996194698091746,-0.994521895368273,-0.992546151641322,-0.990268068741570,-0.987688340595138,-0.984807753012208,-0.981627183447664,-0.978147600733806,-0.974370064785235,-0.970295726275997,-0.965925826289068,-0.961261695938319,-0.956304755963035,-0.951056516295154,-0.945518575599317,-0.939692620785908,-0.933580426497202,-0.927183854566787,-0.920504853452441,-0.913545457642601,-0.906307787036650,-0.898794046299167,-0.891006524188368,-0.882947592858927,-0.874619707139396,-0.866025403784439,-0.857167300702112,-0.848048096156426,-0.838670567945424,-0.829037572555042,-0.819152044288992,-0.809016994374948,-0.798635510047293,-0.788010753606722,-0.777145961456971,-0.766044443118978,-0.754709580222772,-0.743144825477395,-0.731353701619170,-0.719339800338651,-0.707106781186548,-0.694658370458998,-0.681998360062498,-0.669130606358858,-0.656059028990507,-0.642787609686540,-0.629320391049838,-0.615661475325658,-0.601815023152048,-0.587785252292473,-0.573576436351047,-0.559192903470747,-0.544639035015027,-0.529919264233205,-0.515038074910055,-0.500000000000000,-0.484809620246337,-0.469471562785891,-0.453990499739547,-0.438371146789078,-0.422618261740699,-0.406736643075800,-0.390731128489274,-0.374606593415912,-0.358367949545301,-0.342020143325669,-0.325568154457157,-0.309016994374948,-0.292371704722737,-0.275637355816999,-0.258819045102521,-0.241921895599668,-0.224951054343865,-0.207911690817760,-0.190808995376545,-0.173648177666930,-0.156434465040231,-0.139173100960066,-0.121869343405147,-0.104528463267653,-0.0871557427476583,-0.0697564737441256,-0.0523359562429444,-0.0348994967025008,-0.0174524064372836
};

/* Function that returns sin(angle) */
double fastSin(double angle){
	unsigned int index;
	index = (unsigned int)angle;
	return (double)sinusValues[index % SIN_N];
}	

/* Function that returns cos(angle) */
double fastCos(double angle){
	double newAngle = (double)((int)(angle + 90) % (int)360);
	return (double)fastSin(newAngle);
}



/* Convert from radians to degrees */
double rad2deg(double angle){
	return RAD_TO_DEG * angle;
}

/* Convert from degrees to radians */
double deg2rad(double angle){
	return DEG_TO_RAD * angle;
}
