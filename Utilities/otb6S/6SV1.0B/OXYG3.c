/* OXYG3.f -- translated by f2c (version 19970805).
   You must link the resulting object file with the libraries:
	-lf2c -lm   (in that order)
*/

#ifdef __cplusplus
extern "C" {
#endif
/* OTB patches: replace "f2c.h" by "otb_6S.h" */
/*#include "f2c.h"*/
#include "otb_6S.h"

/*<       subroutine    oxyg3(a,inu) >*/
/* Subroutine */ int oxyg3_(doublereal *a, integer *inu)
{
    /* Initialized data */

    static doublereal acr[2048]	/* was [8][256] */ = { 0.,0.,0.,0.,0.,0.,
	    7620.,7630.,0.,0.,0.,0.,0.,0.,7630.,7640.,0.,0.,0.,0.,0.,0.,7640.,
	    7650.,0.,0.,0.,0.,0.,0.,7650.,7660.,5.4851e-9,.018194,.043239,
	    -1.7296e-4,.041212,-1.6888e-4,7660.,7670.,1.5945e-8,.018194,
	    .03852,-1.5408e-4,.036492,-1.5e-4,7670.,7680.,0.,0.,0.,0.,0.,0.,
	    7680.,7690.,4.3251e-8,.018194,.034069,-1.3628e-4,.032042,
	    -1.3219e-4,7690.,7700.,1.0929e-7,.018194,.029889,-1.1956e-4,
	    .027862,-1.1547e-4,7700.,7710.,2.5722e-7,.018194,.02598,
	    -1.0392e-4,.023953,-9.9839e-5,7710.,7720.,0.,0.,0.,0.,0.,0.,7720.,
	    7730.,5.6266e-7,.018194,.022343,-8.9371e-5,.020315,-8.5289e-5,
	    7730.,7740.,1.1425e-6,.01906,.018977,-7.591e-5,.01695,-7.1828e-5,
	    7740.,7750.,2.1596e-6,.022229,.016034,-6.2289e-5,.015554,
	    -5.5716e-5,7750.,7760.,8.1892e-8,.052034,.039222,-1.5556e-4,
	    .037572,-1.5339e-4,7760.,7770.,3.9209e-6,.032273,.014036,
	    -4.6954e-5,.015654,-4.8384e-5,7770.,7780.,6.4421e-6,.036427,
	    .011888,-3.5835e-5,.013496,-4.0675e-5,7780.,7790.,1.1047e-5,
	    .055891,.011375,-2.6109e-5,.013172,-4.0967e-5,7790.,7800.,
	    1.7987e-5,.067558,.010748,-2.3562e-5,.01137,-3.8223e-5,7800.,
	    7810.,9.8092e-6,.038971,.015905,-6.3621e-5,.013877,-5.9532e-5,
	    7810.,7820.,4.4018e-5,.082997,.0095499,-3.1911e-5,.0077993,
	    -3.2091e-5,7820.,7830.,7.0926e-5,.086557,.0076614,-2.7697e-5,
	    .0055197,-2.4447e-5,7830.,7840.,1.0119e-4,.087824,.0052157,
	    -1.9889e-5,.00297,-1.5277e-5,7840.,7850.,1.2386e-4,.090123,
	    .0034834,-1.2896e-5,.0022642,-3.5587e-6,7850.,7860.,1.3558e-4,
	    .14355,.0025455,7.5114e-7,.0043782,4.2838e-6,7860.,7870.,
	    3.6155e-4,.30611,.00774,-2.3164e-5,.0072019,-2.6289e-5,7870.,
	    7880.,7.4132e-4,.38505,.0019206,-6.4925e-6,1.9419e-5,-3.3562e-6,
	    7880.,7890.,2.6142e-4,.099139,5.6355e-4,-2.1878e-6,-.0015085,
	    2.0396e-6,7890.,7900.,3.3585e-4,.12035,.0017877,-6.7625e-6,
	    -3.0147e-4,-2.6201e-6,7900.,7910.,2.1797e-4,.09124,.0044856,
	    -1.7351e-5,.0025121,-1.3772e-5,7910.,7920.,1.8805e-4,.12809,
	    .0061732,-1.8626e-5,.0047187,-2.0003e-5,7920.,7930.,8.7414e-5,
	    .10246,.0071283,-9.5048e-6,.0079366,-2.5696e-5,7930.,7940.,
	    5.0284e-5,.070001,.0058651,-1.5881e-6,.0099197,-1.9259e-5,7940.,
	    7950.,3.4484e-5,.036136,.0050423,-1.3556e-5,.0083314,-2.9461e-6,
	    7950.,7960.,2.508e-5,.023597,.0062798,-2.4587e-5,.0054199,
	    -1.4942e-5,7960.,7970.,1.7175e-5,.021672,.0082429,-3.2972e-5,
	    .0062159,-2.8891e-5,7970.,7980.,1.0919e-5,.0208,.010514,
	    -4.2054e-5,.0084864,-3.7973e-5,7980.,7990.,6.453e-6,.019927,
	    .013058,-5.2234e-5,.011031,-4.8151e-5,7990.,8e3,3.5484e-6,.019493,
	    .015877,-6.3508e-5,.01385,-5.9425e-5,8e3,8010.,1.8178e-6,.01906,
	    .018969,-7.5874e-5,.016941,-7.1792e-5,8010.,8020.,8.6808e-7,
	    .018194,.022333,-8.9332e-5,.020306,-8.525e-5,8020.,8030.,
	    5.4731e-7,.034766,.027088,-1.0685e-4,.025457,-1.0498e-4,8030.,
	    8040.,6.2423e-8,.018194,.034057,-1.3623e-4,.03203,-1.3215e-4,
	    8040.,8050.,2.2644e-8,.018194,.038506,-1.5403e-4,.036479,
	    -1.4994e-4,8050.,8060.,7.6809e-9,.018194,.043225,-1.729e-4,
	    .041198,-1.6882e-4,8060.,8070.,0.,0.,0.,0.,0.,0.,8070.,8080.,0.,
	    0.,0.,0.,0.,0.,8080.,8090.,0.,0.,0.,0.,0.,0.,8090.,8100.,0.,0.,0.,
	    0.,0.,0.,8100.,8110.,0.,0.,0.,0.,0.,0.,8110.,8120.,0.,0.,0.,0.,0.,
	    0.,8120.,8130.,0.,0.,0.,0.,0.,0.,8130.,8140.,0.,0.,0.,0.,0.,0.,
	    8140.,8150.,0.,0.,0.,0.,0.,0.,8150.,8160.,0.,0.,0.,0.,0.,0.,8160.,
	    8170.,0.,0.,0.,0.,0.,0.,8170.,8180.,0.,0.,0.,0.,0.,0.,8180.,8190.,
	    0.,0.,0.,0.,0.,0.,8190.,8200.,0.,0.,0.,0.,0.,0.,8200.,8210.,0.,0.,
	    0.,0.,0.,0.,8210.,8220.,0.,0.,0.,0.,0.,0.,8220.,8230.,0.,0.,0.,0.,
	    0.,0.,8230.,8240.,0.,0.,0.,0.,0.,0.,8240.,8250.,0.,0.,0.,0.,0.,0.,
	    8250.,8260.,0.,0.,0.,0.,0.,0.,8260.,8270.,0.,0.,0.,0.,0.,0.,8270.,
	    8280.,0.,0.,0.,0.,0.,0.,8280.,8290.,0.,0.,0.,0.,0.,0.,8290.,8300.,
	    0.,0.,0.,0.,0.,0.,8300.,8310.,0.,0.,0.,0.,0.,0.,8310.,8320.,0.,0.,
	    0.,0.,0.,0.,8320.,8330.,0.,0.,0.,0.,0.,0.,8330.,8340.,0.,0.,0.,0.,
	    0.,0.,8340.,8350.,0.,0.,0.,0.,0.,0.,8350.,8360.,0.,0.,0.,0.,0.,0.,
	    8360.,8370.,0.,0.,0.,0.,0.,0.,8370.,8380.,0.,0.,0.,0.,0.,0.,8380.,
	    8390.,0.,0.,0.,0.,0.,0.,8390.,8400.,0.,0.,0.,0.,0.,0.,8400.,8410.,
	    0.,0.,0.,0.,0.,0.,8410.,8420.,0.,0.,0.,0.,0.,0.,8420.,8430.,0.,0.,
	    0.,0.,0.,0.,8430.,8440.,0.,0.,0.,0.,0.,0.,8440.,8450.,0.,0.,0.,0.,
	    0.,0.,8450.,8460.,0.,0.,0.,0.,0.,0.,8460.,8470.,0.,0.,0.,0.,0.,0.,
	    8470.,8480.,0.,0.,0.,0.,0.,0.,8480.,8490.,0.,0.,0.,0.,0.,0.,8490.,
	    8500.,0.,0.,0.,0.,0.,0.,8500.,8510.,0.,0.,0.,0.,0.,0.,8510.,8520.,
	    0.,0.,0.,0.,0.,0.,8520.,8530.,0.,0.,0.,0.,0.,0.,8530.,8540.,0.,0.,
	    0.,0.,0.,0.,8540.,8550.,0.,0.,0.,0.,0.,0.,8550.,8560.,0.,0.,0.,0.,
	    0.,0.,8560.,8570.,0.,0.,0.,0.,0.,0.,8570.,8580.,0.,0.,0.,0.,0.,0.,
	    8580.,8590.,0.,0.,0.,0.,0.,0.,8590.,8600.,0.,0.,0.,0.,0.,0.,8600.,
	    8610.,0.,0.,0.,0.,0.,0.,8610.,8620.,0.,0.,0.,0.,0.,0.,8620.,8630.,
	    0.,0.,0.,0.,0.,0.,8630.,8640.,0.,0.,0.,0.,0.,0.,8640.,8650.,0.,0.,
	    0.,0.,0.,0.,8650.,8660.,0.,0.,0.,0.,0.,0.,8660.,8670.,0.,0.,0.,0.,
	    0.,0.,8670.,8680.,0.,0.,0.,0.,0.,0.,8680.,8690.,0.,0.,0.,0.,0.,0.,
	    8690.,8700.,0.,0.,0.,0.,0.,0.,8700.,8710.,0.,0.,0.,0.,0.,0.,8710.,
	    8720.,0.,0.,0.,0.,0.,0.,8720.,8730.,0.,0.,0.,0.,0.,0.,8730.,8740.,
	    0.,0.,0.,0.,0.,0.,8740.,8750.,0.,0.,0.,0.,0.,0.,8750.,8760.,0.,0.,
	    0.,0.,0.,0.,8760.,8770.,0.,0.,0.,0.,0.,0.,8770.,8780.,0.,0.,0.,0.,
	    0.,0.,8780.,8790.,0.,0.,0.,0.,0.,0.,8790.,8800.,0.,0.,0.,0.,0.,0.,
	    8800.,8810.,0.,0.,0.,0.,0.,0.,8810.,8820.,0.,0.,0.,0.,0.,0.,8820.,
	    8830.,0.,0.,0.,0.,0.,0.,8830.,8840.,0.,0.,0.,0.,0.,0.,8840.,8850.,
	    0.,0.,0.,0.,0.,0.,8850.,8860.,0.,0.,0.,0.,0.,0.,8860.,8870.,0.,0.,
	    0.,0.,0.,0.,8870.,8880.,0.,0.,0.,0.,0.,0.,8880.,8890.,0.,0.,0.,0.,
	    0.,0.,8890.,8900.,0.,0.,0.,0.,0.,0.,8900.,8910.,0.,0.,0.,0.,0.,0.,
	    8910.,8920.,0.,0.,0.,0.,0.,0.,8920.,8930.,0.,0.,0.,0.,0.,0.,8930.,
	    8940.,0.,0.,0.,0.,0.,0.,8940.,8950.,0.,0.,0.,0.,0.,0.,8950.,8960.,
	    0.,0.,0.,0.,0.,0.,8960.,8970.,0.,0.,0.,0.,0.,0.,8970.,8980.,0.,0.,
	    0.,0.,0.,0.,8980.,8990.,0.,0.,0.,0.,0.,0.,8990.,9e3,0.,0.,0.,0.,
	    0.,0.,9e3,9010.,0.,0.,0.,0.,0.,0.,9010.,9020.,0.,0.,0.,0.,0.,0.,
	    9020.,9030.,0.,0.,0.,0.,0.,0.,9030.,9040.,0.,0.,0.,0.,0.,0.,9040.,
	    9050.,0.,0.,0.,0.,0.,0.,9050.,9060.,0.,0.,0.,0.,0.,0.,9060.,9070.,
	    0.,0.,0.,0.,0.,0.,9070.,9080.,0.,0.,0.,0.,0.,0.,9080.,9090.,0.,0.,
	    0.,0.,0.,0.,9090.,9100.,0.,0.,0.,0.,0.,0.,9100.,9110.,0.,0.,0.,0.,
	    0.,0.,9110.,9120.,0.,0.,0.,0.,0.,0.,9120.,9130.,0.,0.,0.,0.,0.,0.,
	    9130.,9140.,0.,0.,0.,0.,0.,0.,9140.,9150.,0.,0.,0.,0.,0.,0.,9150.,
	    9160.,0.,0.,0.,0.,0.,0.,9160.,9170.,0.,0.,0.,0.,0.,0.,9170.,9180.,
	    0.,0.,0.,0.,0.,0.,9180.,9190.,0.,0.,0.,0.,0.,0.,9190.,9200.,0.,0.,
	    0.,0.,0.,0.,9200.,9210.,0.,0.,0.,0.,0.,0.,9210.,9220.,0.,0.,0.,0.,
	    0.,0.,9220.,9230.,0.,0.,0.,0.,0.,0.,9230.,9240.,0.,0.,0.,0.,0.,0.,
	    9240.,9250.,0.,0.,0.,0.,0.,0.,9250.,9260.,2.9327e-8,.020793,
	    .01052,-4.2079e-5,.0084925,-3.7997e-5,9260.,9270.,4.284e-8,
	    .021659,.0082482,-3.2993e-5,.0062209,-2.8911e-5,9270.,9280.,0.,0.,
	    0.,0.,0.,0.,9280.,9290.,1.4493e-7,.078959,.011173,-3.6086e-5,
	    .0098558,-3.9242e-5,9290.,9300.,2.5005e-7,.083955,.0092831,
	    -3.2526e-5,.0073578,-3.1073e-5,9300.,9310.,2.7511e-7,.065813,
	    .0069254,-2.5251e-5,.0046721,-2.1357e-5,9310.,9320.,3.3929e-7,
	    .065167,.0055165,-2.0774e-5,.0031412,-1.5731e-5,9320.,9330.,
	    7.3603e-7,.092398,.0037855,-1.4891e-5,.0017763,-1.1006e-5,9330.,
	    9340.,4.4813e-7,.07935,.0045127,-2.4202e-6,.0042176,-9.3426e-6,
	    9340.,9350.,1.4773e-6,.2629,.0066029,-1.8761e-5,.004739,
	    -1.8284e-5,9350.,9360.,3.6258e-6,.35403,.0024719,-8.6417e-6,
	    5.0685e-4,-5.3198e-6,9360.,9370.,1.0885e-6,.098959,2.798e-4,
	    -1.1056e-6,-.0017654,3.0416e-6,9370.,9380.,1.6901e-6,.12199,
	    .0012891,-4.9557e-6,-7.9138e-4,-7.506e-7,9380.,9390.,1.6816e-6,
	    .13899,.0035668,-1.2886e-5,.0015543,-9.4945e-6,9390.,9400.,
	    1.0341e-6,.16279,.0068719,-1.996e-5,.0057191,-2.3184e-5,9400.,
	    9410.,3.1773e-7,.06436,.0052558,-2.7296e-6,.0065364,-1.6975e-5,
	    9410.,9420.,2.0773e-7,.023392,.0030789,-1.2316e-5,.0010516,
	    -8.2335e-6,9420.,9430.,1.6613e-7,.022959,.0045253,-1.8101e-5,
	    .0024979,-1.4019e-5,9430.,9440.,1.2289e-7,.022092,.0062467,
	    -2.4987e-5,.0042194,-2.0905e-5,9440.,9450.,8.4168e-8,.021659,
	    .0082429,-3.2972e-5,.0062156,-2.8889e-5,9450.,9460.,8.5119e-8,
	    .040142,.011444,-4.5054e-5,.0095711,-4.1931e-5,9460.,9470.,0.,0.,
	    0.,0.,0.,0.,9470.,9480.,0.,0.,0.,0.,0.,0.,9480.,9490.,0.,0.,0.,0.,
	    0.,0.,9490.,9500.,0.,0.,0.,0.,0.,0.,9500.,9510.,0.,0.,0.,0.,0.,0.,
	    9510.,9520.,0.,0.,0.,0.,0.,0.,9520.,9530.,0.,0.,0.,0.,0.,0.,9530.,
	    9540.,0.,0.,0.,0.,0.,0.,9540.,9550.,0.,0.,0.,0.,0.,0.,9550.,9560.,
	    0.,0.,0.,0.,0.,0.,9560.,9570.,0.,0.,0.,0.,0.,0.,9570.,9580.,0.,0.,
	    0.,0.,0.,0.,9580.,9590.,0.,0.,0.,0.,0.,0.,9590.,9600.,0.,0.,0.,0.,
	    0.,0.,9600.,9610.,0.,0.,0.,0.,0.,0.,9610.,9620.,0.,0.,0.,0.,0.,0.,
	    9620.,9630.,0.,0.,0.,0.,0.,0.,9630.,9640.,0.,0.,0.,0.,0.,0.,9640.,
	    9650.,0.,0.,0.,0.,0.,0.,9650.,9660.,0.,0.,0.,0.,0.,0.,9660.,9670.,
	    0.,0.,0.,0.,0.,0.,9670.,9680.,0.,0.,0.,0.,0.,0.,9680.,9690.,0.,0.,
	    0.,0.,0.,0.,9690.,9700.,0.,0.,0.,0.,0.,0.,9700.,9710.,0.,0.,0.,0.,
	    0.,0.,9710.,9720.,0.,0.,0.,0.,0.,0.,9720.,9730.,0.,0.,0.,0.,0.,0.,
	    9730.,9740.,0.,0.,0.,0.,0.,0.,9740.,9750.,0.,0.,0.,0.,0.,0.,9750.,
	    9760.,0.,0.,0.,0.,0.,0.,9760.,9770.,0.,0.,0.,0.,0.,0.,9770.,9780.,
	    0.,0.,0.,0.,0.,0.,9780.,9790.,0.,0.,0.,0.,0.,0.,9790.,9800.,0.,0.,
	    0.,0.,0.,0.,9800.,9810.,0.,0.,0.,0.,0.,0.,9810.,9820.,0.,0.,0.,0.,
	    0.,0.,9820.,9830.,0.,0.,0.,0.,0.,0.,9830.,9840.,0.,0.,0.,0.,0.,0.,
	    9840.,9850.,0.,0.,0.,0.,0.,0.,9850.,9860.,0.,0.,0.,0.,0.,0.,9860.,
	    9870.,0.,0.,0.,0.,0.,0.,9870.,9880.,0.,0.,0.,0.,0.,0.,9880.,9890.,
	    0.,0.,0.,0.,0.,0.,9890.,9900.,0.,0.,0.,0.,0.,0.,9900.,9910.,0.,0.,
	    0.,0.,0.,0.,9910.,9920.,0.,0.,0.,0.,0.,0.,9920.,9930.,0.,0.,0.,0.,
	    0.,0.,9930.,9940.,0.,0.,0.,0.,0.,0.,9940.,9950.,0.,0.,0.,0.,0.,0.,
	    9950.,9960.,0.,0.,0.,0.,0.,0.,9960.,9970.,0.,0.,0.,0.,0.,0.,9970.,
	    9980.,0.,0.,0.,0.,0.,0.,9980.,9990.,0.,0.,0.,0.,0.,0.,9990.,1e4,
	    0.,0.,0.,0.,0.,0.,1e4,10010.,0.,0.,0.,0.,0.,0.,10010.,10020.,0.,
	    0.,0.,0.,0.,0.,10020.,10030.,0.,0.,0.,0.,0.,0.,10030.,10040.,0.,
	    0.,0.,0.,0.,0.,10040.,10050.,0.,0.,0.,0.,0.,0.,10050.,10060.,0.,
	    0.,0.,0.,0.,0.,10060.,10070.,0.,0.,0.,0.,0.,0.,10070.,10080.,0.,
	    0.,0.,0.,0.,0.,10080.,10090.,0.,0.,0.,0.,0.,0.,10090.,10100.,0.,
	    0.,0.,0.,0.,0.,10100.,10110.,0.,0.,0.,0.,0.,0.,10110.,10120.,0.,
	    0.,0.,0.,0.,0.,10120.,10130.,0.,0.,0.,0.,0.,0.,10130.,10140.,0.,
	    0.,0.,0.,0.,0.,10140.,10150.,0.,0.,0.,0.,0.,0.,10150.,10160.,0.,
	    0.,0.,0.,0.,0.,10160.,10170.,0.,0.,0.,0.,0.,0.,10170.,10180. };

    integer i__;

/*<        real a(8) >*/
/*<        real acr(8,256) >*/
/*<        integer inu,j,k,i >*/
/*     oxygen (7620 - 10170 cm-1) */

/*<    >*/
    /* Parameter adjustments */
    --a;

    /* Function Body */
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/
/*<    >*/

/*<       do i=1,8 >*/
    for (i__ = 1; i__ <= 8; ++i__) {
/*<       a(i)=acr(i,inu) >*/
	a[i__] = acr[i__ + (*inu << 3) - 9];
/*<       enddo >*/
    }

/*<       return >*/
    return 0;
/*<       end >*/
} /* oxyg3_ */

#ifdef __cplusplus
	}
#endif
