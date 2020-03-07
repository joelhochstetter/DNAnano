// switches for output
#declare DRAW_BASES = 1; // possible values are 0, 1; only relevant for DNA ribbons
#declare DRAW_BASES_TYPE = 3; // possible values are 1, 2, 3; only relevant for DNA ribbons
#declare DRAW_FOG = 0; // set to 1 to enable fog

#include "colors.inc"

#include "transforms.inc"
background { rgb <1, 1, 1>}

#default {
   normal{
       ripples 0.25
       frequency 0.20
       turbulence 0.2
       lambda 5
   }
	finish {
		phong 0.1
		phong_size 40.
	}
}

// original window dimensions: 1024x640


// camera settings

camera {
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<0.805343, 4.688679, 2.645892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.066669, 4.496277, 2.412033>,  <1.223465, 4.380836, 2.271718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.066669, 4.496277, 2.412033>,  <0.805343, 4.688679, 2.645892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.066669, 4.496277, 2.412033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094585, -0.818040, 0.567331,
		-0.751154, -0.315347, -0.579934,
		0.653315, -0.481006, -0.584647,
		1.262664, 4.351975, 2.236639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.017511, 3.934802, 2.928339>,  <0.805343, 4.688679, 2.645892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.017511, 3.934802, 2.928339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.855419, 3.706291, 3.213837>,  <0.758164, 3.569185, 3.385136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.855419, 3.706291, 3.213837>,  <1.017511, 3.934802, 2.928339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.855419, 3.706291, 3.213837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912088, -0.305856, 0.273033,
		0.062326, 0.761640, 0.644996,
		-0.405229, -0.571276, 0.713745,
		0.733850, 3.534908, 3.427960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.270616, 4.041765, 3.627183>,  <1.017511, 3.934802, 2.928339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.270616, 4.041765, 3.627183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.162540, 3.660927, 3.569893>,  <1.097695, 3.432424, 3.535519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.162540, 3.660927, 3.569893>,  <1.270616, 4.041765, 3.627183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.162540, 3.660927, 3.569893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865132, -0.305363, 0.397869,
		-0.422545, -0.016409, 0.906194,
		-0.270189, -0.952095, -0.143225,
		1.081484, 3.375299, 3.526925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.270791, 3.707097, 4.214669>,  <1.270616, 4.041765, 3.627183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.270791, 3.707097, 4.214669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.334728, 3.445656, 3.918762>,  <1.373091, 3.288791, 3.741218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.334728, 3.445656, 3.918762>,  <1.270791, 3.707097, 4.214669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.334728, 3.445656, 3.918762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894923, -0.220326, 0.388031,
		-0.416608, -0.724059, 0.549706,
		0.159843, -0.653602, -0.739767,
		1.382681, 3.249575, 3.696832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.468111, 3.034453, 4.515043>,  <1.270791, 3.707097, 4.214669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.468111, 3.034453, 4.515043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.620365, 3.128593, 4.157333>,  <1.711718, 3.185078, 3.942708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.620365, 3.128593, 4.157333>,  <1.468111, 3.034453, 4.515043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.620365, 3.128593, 4.157333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892601, -0.346191, 0.288815,
		-0.241616, -0.908164, -0.341848,
		0.380636, 0.235352, -0.894274,
		1.734556, 3.199199, 3.889051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.817985, 2.455695, 4.369899>,  <1.468111, 3.034453, 4.515043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.817985, 2.455695, 4.369899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.981812, 2.742012, 4.143661>,  <2.080107, 2.913802, 4.007919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.981812, 2.742012, 4.143661>,  <1.817985, 2.455695, 4.369899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.981812, 2.742012, 4.143661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887411, -0.168819, 0.428954,
		0.211560, -0.677598, -0.704346,
		0.409565, 0.715794, -0.565593,
		2.104681, 2.956750, 3.973984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.480042, 2.298395, 4.349121>,  <1.817985, 2.455695, 4.369899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.480042, 2.298395, 4.349121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.506374, 2.669777, 4.202896>,  <2.522174, 2.892606, 4.115161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.506374, 2.669777, 4.202896>,  <2.480042, 2.298395, 4.349121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.506374, 2.669777, 4.202896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952022, 0.051288, 0.301702,
		0.298866, -0.367885, -0.880534,
		0.065831, 0.928456, -0.365563,
		2.526124, 2.948314, 4.093227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.194405, 2.310033, 4.277125>,  <2.480042, 2.298395, 4.349121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.194405, 2.310033, 4.277125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.066639, 2.687355, 4.313232>,  <2.989979, 2.913748, 4.334897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.066639, 2.687355, 4.313232>,  <3.194405, 2.310033, 4.277125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.066639, 2.687355, 4.313232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844810, 0.240317, 0.478062,
		0.429266, 0.228960, -0.873675,
		-0.319416, 0.943305, 0.090268,
		2.970814, 2.970347, 4.340313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.604843, 3.289717, 5.058141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.404158, 3.626358, 5.138130>,  <4.283747, 3.828343, 5.186123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.404158, 3.626358, 5.138130>,  <4.604843, 3.289717, 5.058141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.404158, 3.626358, 5.138130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801526, -0.365345, -0.473370,
		-0.325328, -0.397783, 0.857864,
		-0.501715, 0.841600, 0.199977,
		4.253644, 3.878839, 5.198122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.951317, 3.153034, 5.379264>,  <4.604843, 3.289717, 5.058141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.951317, 3.153034, 5.379264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.903439, 3.514084, 5.213882>,  <3.874711, 3.730713, 5.114654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.903439, 3.514084, 5.213882>,  <3.951317, 3.153034, 5.379264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.903439, 3.514084, 5.213882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771490, -0.346679, -0.533495,
		-0.624880, 0.255118, 0.737862,
		-0.119697, 0.902623, -0.413454,
		3.867529, 3.784871, 5.089847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.280608, 3.446887, 5.455059>,  <3.951317, 3.153034, 5.379264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.280608, 3.446887, 5.455059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.407150, 3.622452, 5.118660>,  <3.483076, 3.727790, 4.916821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.407150, 3.622452, 5.118660>,  <3.280608, 3.446887, 5.455059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.407150, 3.622452, 5.118660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831231, -0.298952, -0.468704,
		-0.457137, 0.847340, 0.270260,
		0.316357, 0.438911, -0.840997,
		3.502057, 3.754125, 4.866361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.714232, 3.885260, 5.122104>,  <3.280608, 3.446887, 5.455059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.714232, 3.885260, 5.122104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.962742, 3.763702, 4.833199>,  <3.111848, 3.690768, 4.659855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.962742, 3.763702, 4.833199>,  <2.714232, 3.885260, 5.122104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.962742, 3.763702, 4.833199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773716, -0.092025, -0.626813,
		0.124019, 0.948251, -0.292301,
		0.621275, -0.303895, -0.722264,
		3.149124, 3.672534, 4.616519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.572197, 4.168774, 4.541924>,  <2.714232, 3.885260, 5.122104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.572197, 4.168774, 4.541924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.706373, 3.805313, 4.442459>,  <2.786879, 3.587237, 4.382780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.706373, 3.805313, 4.442459>,  <2.572197, 4.168774, 4.541924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.706373, 3.805313, 4.442459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735088, -0.087381, -0.672317,
		0.589173, 0.408310, -0.697250,
		0.335440, -0.908651, -0.248662,
		2.807005, 3.532718, 4.367861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.659868, 4.211800, 3.889113>,  <2.572197, 4.168774, 4.541924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.659868, 4.211800, 3.889113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.606768, 3.820145, 3.950645>,  <2.574907, 3.585151, 3.987565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.606768, 3.820145, 3.950645>,  <2.659868, 4.211800, 3.889113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.606768, 3.820145, 3.950645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778469, 0.006937, -0.627645,
		0.613485, -0.203073, -0.763150,
		-0.132751, -0.979139, 0.153830,
		2.566942, 3.526403, 3.996794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.566233, 3.950626, 3.238287>,  <2.659868, 4.211800, 3.889113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.566233, 3.950626, 3.238287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.422243, 3.660889, 3.473488>,  <2.335849, 3.487046, 3.614609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.422243, 3.660889, 3.473488>,  <2.566233, 3.950626, 3.238287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.422243, 3.660889, 3.473488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815129, -0.062414, -0.575907,
		0.453854, -0.686609, -0.567965,
		-0.359974, -0.724342, 0.588002,
		2.314251, 3.443586, 3.649889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.324157, 3.416500, 2.753947>,  <2.566233, 3.950626, 3.238287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.324157, 3.416500, 2.753947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.145559, 3.400665, 3.111511>,  <2.038400, 3.391165, 3.326050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.145559, 3.400665, 3.111511>,  <2.324157, 3.416500, 2.753947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.145559, 3.400665, 3.111511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894513, -0.004930, -0.447014,
		0.022115, -0.999203, -0.033235,
		-0.446494, -0.039615, 0.893909,
		2.011611, 3.388789, 3.379684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
