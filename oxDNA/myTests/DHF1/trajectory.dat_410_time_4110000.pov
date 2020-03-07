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
	<0.584223, 1.687116, 3.472724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.250282, 1.672680, 3.692440>,  <0.049918, 1.664018, 3.824270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.250282, 1.672680, 3.692440>,  <0.584223, 1.687116, 3.472724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.250282, 1.672680, 3.692440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489414, 0.408108, 0.770663,
		-0.251982, 0.912220, -0.323048,
		-0.834853, -0.036089, 0.549289,
		-0.000174, 1.661853, 3.857227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.258671, 2.313463, 3.599931>,  <0.584223, 1.687116, 3.472724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.258671, 2.313463, 3.599931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.184254, 2.087761, 3.921677>,  <0.139603, 1.952339, 4.114724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.184254, 2.087761, 3.921677>,  <0.258671, 2.313463, 3.599931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.184254, 2.087761, 3.921677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511509, 0.643350, 0.569613,
		-0.838896, 0.517412, 0.168932,
		-0.186043, -0.564256, 0.804365,
		0.128441, 1.918484, 4.162986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.056740, 2.799420, 4.031320>,  <0.258671, 2.313463, 3.599931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.056740, 2.799420, 4.031320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.204041, 2.491367, 4.239662>,  <0.292421, 2.306536, 4.364667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.204041, 2.491367, 4.239662>,  <0.056740, 2.799420, 4.031320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.204041, 2.491367, 4.239662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591857, 0.626229, 0.507486,
		-0.717005, 0.121390, 0.686417,
		0.368250, -0.770131, 0.520855,
		0.314516, 2.260328, 4.395919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.091698, 2.844623, 4.784405>,  <0.056740, 2.799420, 4.031320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.091698, 2.844623, 4.784405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.260410, 2.666389, 4.719196>,  <0.471675, 2.559449, 4.680071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.260410, 2.666389, 4.719196>,  <-0.091698, 2.844623, 4.784405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.260410, 2.666389, 4.719196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452861, 0.686519, 0.568866,
		-0.141560, -0.574583, 0.806111,
		0.880271, -0.445585, -0.163022,
		0.524492, 2.532714, 4.670290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.360859, 3.006205, 5.361011>,  <-0.091698, 2.844623, 4.784405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.360859, 3.006205, 5.361011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.613533, 2.895393, 5.071396>,  <0.765137, 2.828907, 4.897627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.613533, 2.895393, 5.071396>,  <0.360859, 3.006205, 5.361011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.613533, 2.895393, 5.071396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669856, 0.665171, 0.329910,
		0.390214, -0.693400, 0.605747,
		0.631685, -0.277028, -0.724037,
		0.803038, 2.812285, 4.854185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.061578, 2.792174, 5.665177>,  <0.360859, 3.006205, 5.361011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.061578, 2.792174, 5.665177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.087929, 2.911575, 5.284325>,  <1.103739, 2.983216, 5.055813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.087929, 2.911575, 5.284325>,  <1.061578, 2.792174, 5.665177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.087929, 2.911575, 5.284325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677884, 0.686813, 0.262225,
		0.732212, -0.662709, -0.157106,
		0.065876, 0.298504, -0.952132,
		1.107692, 3.001127, 4.998685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.614017, 3.161793, 5.673395>,  <1.061578, 2.792174, 5.665177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.614017, 3.161793, 5.673395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.490242, 3.267685, 5.308064>,  <1.415977, 3.331220, 5.088865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.490242, 3.267685, 5.308064>,  <1.614017, 3.161793, 5.673395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.490242, 3.267685, 5.308064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569737, 0.820604, 0.044825,
		0.761347, -0.506486, -0.404750,
		-0.309436, 0.264728, -0.913328,
		1.397411, 3.347104, 5.034065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.181788, 3.351789, 5.337556>,  <1.614017, 3.161793, 5.673395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.181788, 3.351789, 5.337556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.862095, 3.539314, 5.187122>,  <1.670279, 3.651829, 5.096862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.862095, 3.539314, 5.187122>,  <2.181788, 3.351789, 5.337556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.862095, 3.539314, 5.187122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395889, 0.881463, 0.257479,
		0.452214, 0.056898, -0.890093,
		-0.799234, 0.468814, -0.376084,
		1.622325, 3.679958, 5.074297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.005983, 4.460820, 5.799184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.870138, 4.684532, 5.496696>,  <1.788631, 4.818759, 5.315204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.870138, 4.684532, 5.496696>,  <2.005983, 4.460820, 5.799184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.870138, 4.684532, 5.496696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430004, -0.807386, -0.404011,
		-0.836516, 0.187970, 0.514692,
		-0.339613, 0.559281, -0.756219,
		1.768255, 4.852316, 5.269830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.219691, 4.424614, 5.678090>,  <2.005983, 4.460820, 5.799184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.219691, 4.424614, 5.678090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.400255, 4.511749, 5.331963>,  <1.508594, 4.564031, 5.124287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.400255, 4.511749, 5.331963>,  <1.219691, 4.424614, 5.678090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.400255, 4.511749, 5.331963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588563, -0.656195, -0.472230,
		-0.670687, 0.722464, -0.168003,
		0.451412, 0.217838, -0.865317,
		1.535679, 4.577101, 5.072367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.690135, 4.542536, 5.178885>,  <1.219691, 4.424614, 5.678090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.690135, 4.542536, 5.178885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.038532, 4.404686, 5.038826>,  <1.247571, 4.321976, 4.954791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.038532, 4.404686, 5.038826>,  <0.690135, 4.542536, 5.178885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.038532, 4.404686, 5.038826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455446, -0.833638, -0.312435,
		-0.184222, 0.431602, -0.883052,
		0.870994, -0.344625, -0.350146,
		1.299831, 4.301298, 4.933782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.611840, 4.282250, 4.533443>,  <0.690135, 4.542536, 5.178885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.611840, 4.282250, 4.533443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.928667, 4.097473, 4.693062>,  <1.118763, 3.986607, 4.788833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.928667, 4.097473, 4.693062>,  <0.611840, 4.282250, 4.533443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.928667, 4.097473, 4.693062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397319, -0.886417, -0.237492,
		0.463429, 0.029561, -0.885641,
		0.792068, -0.461942, 0.399046,
		1.166288, 3.958890, 4.812776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.710664, 3.802026, 4.056126>,  <0.611840, 4.282250, 4.533443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.710664, 3.802026, 4.056126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.941362, 3.661354, 4.351067>,  <1.079781, 3.576951, 4.528031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.941362, 3.661354, 4.351067>,  <0.710664, 3.802026, 4.056126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.941362, 3.661354, 4.351067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170078, -0.934508, -0.312679,
		0.799023, 0.054929, -0.598786,
		0.576745, -0.351679, 0.737352,
		1.114386, 3.555851, 4.572272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.323873, 3.343130, 3.781931>,  <0.710664, 3.802026, 4.056126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.323873, 3.343130, 3.781931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.232832, 3.244553, 4.158752>,  <1.178207, 3.185406, 4.384845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.232832, 3.244553, 4.158752>,  <1.323873, 3.343130, 3.781931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.232832, 3.244553, 4.158752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105698, -0.955475, -0.275491,
		0.968001, -0.162275, 0.191420,
		-0.227603, -0.246443, 0.942053,
		1.164551, 3.170620, 4.441368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.637414, 2.695395, 3.873827>,  <1.323873, 3.343130, 3.781931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.637414, 2.695395, 3.873827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.369423, 2.710205, 4.170410>,  <1.208628, 2.719091, 4.348360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.369423, 2.710205, 4.170410>,  <1.637414, 2.695395, 3.873827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.369423, 2.710205, 4.170410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239392, -0.956179, -0.168564,
		0.702724, -0.290433, 0.649483,
		-0.669978, 0.037027, 0.741457,
		1.168429, 2.721313, 4.392847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.854140, 2.125743, 4.313821>,  <1.637414, 2.695395, 3.873827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.854140, 2.125743, 4.313821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.470749, 2.235100, 4.346268>,  <1.240715, 2.300714, 4.365736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.470749, 2.235100, 4.346268>,  <1.854140, 2.125743, 4.313821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.470749, 2.235100, 4.346268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278433, -0.958641, -0.059014,
		0.061627, -0.079149, 0.994956,
		-0.958476, 0.273392, 0.081116,
		1.183206, 2.317117, 4.370603>
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
