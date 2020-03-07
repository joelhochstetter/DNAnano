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
	<2.307063, 4.065042, 4.633966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.394138, 3.921482, 4.270912>,  <2.446383, 3.835346, 4.053080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.394138, 3.921482, 4.270912>,  <2.307063, 4.065042, 4.633966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.394138, 3.921482, 4.270912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836120, -0.548306, 0.016278,
		-0.503504, 0.755348, -0.419443,
		0.217688, -0.358901, -0.907636,
		2.459445, 3.813812, 3.998621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.812661, 4.201895, 4.203396>,  <2.307063, 4.065042, 4.633966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.812661, 4.201895, 4.203396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.006287, 3.927719, 3.985826>,  <2.122462, 3.763214, 3.855283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.006287, 3.927719, 3.985826>,  <1.812661, 4.201895, 4.203396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.006287, 3.927719, 3.985826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869123, -0.304499, -0.389751,
		0.101526, 0.661402, -0.743128,
		0.484064, -0.685439, -0.543925,
		2.151506, 3.722087, 3.822648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.319742, 4.092894, 3.667649>,  <1.812661, 4.201895, 4.203396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.319742, 4.092894, 3.667649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.563271, 3.776085, 3.649586>,  <1.709388, 3.586000, 3.638748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.563271, 3.776085, 3.649586>,  <1.319742, 4.092894, 3.667649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.563271, 3.776085, 3.649586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669598, -0.482522, -0.564633,
		0.425412, 0.373998, -0.824106,
		0.608821, -0.792021, -0.045157,
		1.745917, 3.538478, 3.636039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.235111, 3.750242, 2.972762>,  <1.319742, 4.092894, 3.667649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.235111, 3.750242, 2.972762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.384739, 3.489433, 3.236562>,  <1.474516, 3.332948, 3.394842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.384739, 3.489433, 3.236562>,  <1.235111, 3.750242, 2.972762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.384739, 3.489433, 3.236562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636845, -0.697546, -0.328416,
		0.674166, -0.297148, -0.676168,
		0.374071, -0.652021, 0.659499,
		1.496960, 3.293827, 3.434412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.329604, 3.111377, 2.635820>,  <1.235111, 3.750242, 2.972762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.329604, 3.111377, 2.635820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.347740, 3.001190, 3.019917>,  <1.358622, 2.935078, 3.250374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.347740, 3.001190, 3.019917>,  <1.329604, 3.111377, 2.635820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.347740, 3.001190, 3.019917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655071, -0.733910, -0.179608,
		0.754206, -0.620882, -0.213726,
		0.045340, -0.275467, 0.960240,
		1.361342, 2.918550, 3.307989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.481967, 2.494739, 2.583598>,  <1.329604, 3.111377, 2.635820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.481967, 2.494739, 2.583598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.304089, 2.541740, 2.938774>,  <1.197362, 2.569941, 3.151880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.304089, 2.541740, 2.938774>,  <1.481967, 2.494739, 2.583598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.304089, 2.541740, 2.938774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637548, -0.737835, -0.221655,
		0.629109, -0.664674, 0.403027,
		-0.444696, 0.117504, 0.887941,
		1.170680, 2.576992, 3.205156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.413886, 1.804306, 2.868232>,  <1.481967, 2.494739, 2.583598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.413886, 1.804306, 2.868232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.137737, 2.056831, 3.009558>,  <0.972048, 2.208347, 3.094353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.137737, 2.056831, 3.009558>,  <1.413886, 1.804306, 2.868232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.137737, 2.056831, 3.009558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722572, -0.577584, -0.379850,
		-0.035736, -0.517532, 0.854917,
		-0.690371, 0.631314, 0.353313,
		0.930626, 2.246226, 3.115552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.724558, 1.744197, 2.207533>,  <1.413886, 1.804306, 2.868232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.724558, 1.744197, 2.207533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.830681, 1.955029, 2.530470>,  <1.894354, 2.081527, 2.724232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.830681, 1.955029, 2.530470>,  <1.724558, 1.744197, 2.207533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.830681, 1.955029, 2.530470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758913, -0.402317, 0.512047,
		0.594696, -0.748551, 0.293270,
		0.265306, 0.527079, 0.807342,
		1.910273, 2.113152, 2.772672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.054080, 1.585382, 1.840807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.167877, 1.625751, 2.171118>,  <-0.301051, 1.649973, 2.369304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.167877, 1.625751, 2.171118>,  <0.054080, 1.585382, 1.840807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.167877, 1.625751, 2.171118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620301, 0.711638, 0.329846,
		-0.554365, 0.695260, -0.457485,
		-0.554893, 0.100924, 0.825778,
		-0.334345, 1.656029, 2.418851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.124012, 2.228861, 2.011241>,  <0.054080, 1.585382, 1.840807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.124012, 2.228861, 2.011241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.006607, 2.060669, 2.354647>,  <-0.063836, 1.959754, 2.560690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.006607, 2.060669, 2.354647>,  <0.124012, 2.228861, 2.011241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.006607, 2.060669, 2.354647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620106, 0.599743, 0.505744,
		-0.727543, 0.680812, 0.084709,
		-0.293513, -0.420479, 0.858514,
		-0.081447, 1.934525, 2.612201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.066177, 2.756177, 2.433730>,  <0.124012, 2.228861, 2.011241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.066177, 2.756177, 2.433730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.019424, 2.450382, 2.676962>,  <0.070785, 2.266905, 2.822901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.019424, 2.450382, 2.676962>,  <-0.066177, 2.756177, 2.433730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.019424, 2.450382, 2.676962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429040, 0.632805, 0.644579,
		-0.877569, 0.122949, 0.463418,
		0.214003, -0.764488, 0.608080,
		0.083625, 2.221036, 2.859386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.229347, 3.084917, 3.120768>,  <-0.066177, 2.756177, 2.433730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.229347, 3.084917, 3.120768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.015274, 2.749367, 3.160505>,  <0.113170, 2.548037, 3.184348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.015274, 2.749367, 3.160505>,  <-0.229347, 3.084917, 3.120768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.015274, 2.749367, 3.160505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601733, 0.461121, 0.652138,
		-0.592873, -0.289234, 0.751562,
		0.535182, -0.838875, 0.099344,
		0.145281, 2.497704, 3.190309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.035807, 2.903636, 3.793601>,  <-0.229347, 3.084917, 3.120768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.035807, 2.903636, 3.793601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.241112, 2.710651, 3.578955>,  <0.407263, 2.594861, 3.450167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.241112, 2.710651, 3.578955>,  <-0.035807, 2.903636, 3.793601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.241112, 2.710651, 3.578955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709097, 0.316928, 0.629871,
		-0.133820, -0.816571, 0.561520,
		0.692296, -0.482461, -0.536616,
		0.448801, 2.565913, 3.417970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.448198, 2.766671, 4.236316>,  <-0.035807, 2.903636, 3.793601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.448198, 2.766671, 4.236316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.670807, 2.723610, 3.906784>,  <0.804372, 2.697773, 3.709065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.670807, 2.723610, 3.906784>,  <0.448198, 2.766671, 4.236316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.670807, 2.723610, 3.906784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763679, 0.456817, 0.456194,
		0.327229, -0.883023, 0.336440,
		0.556521, -0.107652, -0.823829,
		0.837763, 2.691314, 3.659635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.130444, 2.604989, 4.539064>,  <0.448198, 2.766671, 4.236316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.130444, 2.604989, 4.539064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.209267, 2.705849, 4.160099>,  <1.256560, 2.766365, 3.932720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.209267, 2.705849, 4.160099>,  <1.130444, 2.604989, 4.539064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.209267, 2.705849, 4.160099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932579, 0.249894, 0.260479,
		0.302433, -0.934865, -0.185907,
		0.197056, 0.252150, -0.947412,
		1.268384, 2.781494, 3.875875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.886822, 2.406134, 4.331146>,  <1.130444, 2.604989, 4.539064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.886822, 2.406134, 4.331146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.777939, 2.699425, 4.081898>,  <1.712609, 2.875400, 3.932349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.777939, 2.699425, 4.081898>,  <1.886822, 2.406134, 4.331146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.777939, 2.699425, 4.081898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934608, 0.355538, 0.010084,
		0.228937, -0.579629, -0.782060,
		-0.272207, 0.733228, -0.623121,
		1.696277, 2.919393, 3.894961>
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
