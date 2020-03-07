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
	<0.883703, 1.503702, 3.758089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.197659, 1.421310, 3.524330>,  <1.386032, 1.371875, 3.384075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.197659, 1.421310, 3.524330>,  <0.883703, 1.503702, 3.758089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.197659, 1.421310, 3.524330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160682, -0.843209, 0.513010,
		-0.598439, -0.496559, -0.628729,
		0.784890, -0.205979, -0.584398,
		1.433125, 1.359517, 3.349011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.833293, 0.847378, 3.472358>,  <0.883703, 1.503702, 3.758089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.833293, 0.847378, 3.472358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.229073, 0.886139, 3.515442>,  <1.466540, 0.909395, 3.541292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.229073, 0.886139, 3.515442>,  <0.833293, 0.847378, 3.472358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.229073, 0.886139, 3.515442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034376, -0.879207, 0.475198,
		0.140748, -0.466481, -0.873261,
		0.989448, 0.096902, 0.107711,
		1.525907, 0.915210, 3.547755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.152650, 0.207173, 3.184835>,  <0.833293, 0.847378, 3.472358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.152650, 0.207173, 3.184835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.341904, 0.415665, 3.468937>,  <1.455456, 0.540760, 3.639398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.341904, 0.415665, 3.468937>,  <1.152650, 0.207173, 3.184835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.341904, 0.415665, 3.468937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112120, -0.764021, 0.635375,
		0.873826, -0.380252, -0.303045,
		0.473136, 0.521230, 0.710255,
		1.483844, 0.572034, 3.682013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.778353, -0.140013, 3.431884>,  <1.152650, 0.207173, 3.184835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.778353, -0.140013, 3.431884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.597507, 0.050079, 3.733810>,  <1.489000, 0.164135, 3.914966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.597507, 0.050079, 3.733810>,  <1.778353, -0.140013, 3.431884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.597507, 0.050079, 3.733810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155596, -0.791249, 0.591367,
		0.878284, 0.384812, 0.283791,
		-0.452114, 0.475231, 0.754817,
		1.461873, 0.192649, 3.960255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.195096, -0.103672, 4.136143>,  <1.778353, -0.140013, 3.431884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.195096, -0.103672, 4.136143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.795769, -0.122406, 4.122486>,  <1.556172, -0.133647, 4.114292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.795769, -0.122406, 4.122486>,  <2.195096, -0.103672, 4.136143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.795769, -0.122406, 4.122486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014148, -0.768171, 0.640089,
		-0.056206, 0.638530, 0.767542,
		-0.998319, -0.046836, -0.034142,
		1.496273, -0.136457, 4.112243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.026812, -0.214209, 4.853613>,  <2.195096, -0.103672, 4.136143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.026812, -0.214209, 4.853613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.718479, -0.337372, 4.630539>,  <1.533480, -0.411269, 4.496695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.718479, -0.337372, 4.630539>,  <2.026812, -0.214209, 4.853613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.718479, -0.337372, 4.630539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013606, -0.867276, 0.497642,
		-0.636893, 0.391186, 0.664335,
		-0.770832, -0.307906, -0.557685,
		1.487230, -0.429744, 4.463233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.708510, -0.658549, 5.304280>,  <2.026812, -0.214209, 4.853613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.708510, -0.658549, 5.304280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.506470, -0.749390, 4.971222>,  <1.385246, -0.803894, 4.771387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.506470, -0.749390, 4.971222>,  <1.708510, -0.658549, 5.304280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.506470, -0.749390, 4.971222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009565, -0.963227, 0.268520,
		-0.863008, 0.143594, 0.484354,
		-0.505100, -0.227102, -0.832645,
		1.354940, -0.817520, 4.721428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.123253, -0.878966, 5.517199>,  <1.708510, -0.658549, 5.304280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.123253, -0.878966, 5.517199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.205215, -1.029129, 5.155628>,  <1.254393, -1.119227, 4.938686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.205215, -1.029129, 5.155628>,  <1.123253, -0.878966, 5.517199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.205215, -1.029129, 5.155628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127801, -0.905354, 0.404971,
		-0.970402, -0.198503, -0.137534,
		0.204905, -0.375408, -0.903926,
		1.266687, -1.141751, 4.884450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.436570, 2.260931, 5.609015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.418997, 2.216797, 5.211845>,  <1.408453, 2.190316, 4.973544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.418997, 2.216797, 5.211845>,  <1.436570, 2.260931, 5.609015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.418997, 2.216797, 5.211845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107166, 0.987627, -0.114490,
		0.993270, -0.111437, -0.031566,
		-0.043934, -0.110337, -0.992923,
		1.405817, 2.183696, 4.913969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.908142, 2.731939, 5.442473>,  <1.436570, 2.260931, 5.609015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.908142, 2.731939, 5.442473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.699080, 2.682251, 5.105095>,  <1.573642, 2.652438, 4.902668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.699080, 2.682251, 5.105095>,  <1.908142, 2.731939, 5.442473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.699080, 2.682251, 5.105095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116887, 0.969544, -0.215223,
		0.844493, -0.211075, -0.492218,
		-0.522656, -0.124220, -0.843445,
		1.542283, 2.644985, 4.852061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.078560, 3.299573, 4.974264>,  <1.908142, 2.731939, 5.442473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.078560, 3.299573, 4.974264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.732468, 3.155624, 4.834625>,  <1.524812, 3.069255, 4.750842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.732468, 3.155624, 4.834625>,  <2.078560, 3.299573, 4.974264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.732468, 3.155624, 4.834625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218255, 0.897190, -0.383946,
		0.451377, -0.256009, -0.854820,
		-0.865230, -0.359873, -0.349096,
		1.472899, 3.047662, 4.729897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.995168, 3.266395, 4.192764>,  <2.078560, 3.299573, 4.974264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.995168, 3.266395, 4.192764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.645609, 3.316910, 4.380531>,  <1.435873, 3.347219, 4.493192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.645609, 3.316910, 4.380531>,  <1.995168, 3.266395, 4.192764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.645609, 3.316910, 4.380531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137305, 0.862217, -0.487574,
		-0.466314, -0.490544, -0.736151,
		-0.873899, 0.126286, 0.469418,
		1.383439, 3.354795, 4.521357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.423613, 3.445819, 3.675232>,  <1.995168, 3.266395, 4.192764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.423613, 3.445819, 3.675232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.334799, 3.580841, 4.041130>,  <1.281510, 3.661854, 4.260669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.334799, 3.580841, 4.041130>,  <1.423613, 3.445819, 3.675232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.334799, 3.580841, 4.041130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186822, 0.906052, -0.379694,
		-0.956973, -0.255200, -0.138113,
		-0.222035, 0.337555, 0.914744,
		1.268188, 3.682107, 4.315553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.874421, 3.880261, 3.622977>,  <1.423613, 3.445819, 3.675232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.874421, 3.880261, 3.622977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.963743, 3.997055, 3.994972>,  <1.017336, 4.067132, 4.218170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.963743, 3.997055, 3.994972>,  <0.874421, 3.880261, 3.622977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.963743, 3.997055, 3.994972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078016, 0.956374, -0.281537,
		-0.971622, -0.009685, 0.236342,
		0.223304, 0.291986, 0.929989,
		1.030735, 4.084651, 4.273969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.354897, 4.423084, 3.715497>,  <0.874421, 3.880261, 3.622977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.354897, 4.423084, 3.715497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.669338, 4.435913, 3.962402>,  <0.858003, 4.443611, 4.110546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.669338, 4.435913, 3.962402>,  <0.354897, 4.423084, 3.715497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.669338, 4.435913, 3.962402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123784, 0.970252, -0.208058,
		-0.605575, 0.239963, 0.758747,
		0.786102, 0.032074, 0.617264,
		0.905169, 4.445535, 4.147582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.202219, 4.894128, 4.193485>,  <0.354897, 4.423084, 3.715497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.202219, 4.894128, 4.193485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.599934, 4.867294, 4.160271>,  <0.838562, 4.851194, 4.140342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.599934, 4.867294, 4.160271>,  <0.202219, 4.894128, 4.193485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.599934, 4.867294, 4.160271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035385, 0.941008, -0.336528,
		0.100714, 0.331667, 0.938005,
		0.994286, -0.067084, -0.083037,
		0.898219, 4.847169, 4.135360>
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
