      subroutine    niox2(a,inu)
       real a(8)
       real acr(8,256)
       integer inu,j,k,i
c     nitrous oxide (5060 - 7610 cm-1)
c
       data ((acr(k,j),k=1,8),j=  1,  8) /
     a 0.72211e-01, 0.24584e+00, 0.96738e-02,-0.51958e-04, 0.67533e-02,
     a-0.47277e-04, 0.50600e+04, 0.50700e+04,
     a 0.21388e+00, 0.25456e+00, 0.43318e-02,-0.31058e-04, 0.12217e-02,
     a-0.25614e-04, 0.50700e+04, 0.50800e+04,
     a 0.57556e+00, 0.33263e+00,-0.26597e-03,-0.12844e-04,-0.33007e-02,
     a-0.73238e-05, 0.50800e+04, 0.50900e+04,
     a 0.67723e+00, 0.36014e+00,-0.34018e-02,-0.80539e-06,-0.65150e-02,
     a 0.54383e-05, 0.50900e+04, 0.51000e+04,
     a 0.30093e+00, 0.41799e+00,-0.47912e-02, 0.45347e-05,-0.79672e-02,
     a 0.10982e-04, 0.51000e+04, 0.51100e+04,
     a 0.10645e+01, 0.53257e+00,-0.31570e-02,-0.14679e-05,-0.62971e-02,
     a 0.47135e-05, 0.51100e+04, 0.51200e+04,
     a 0.67643e+00, 0.61899e+00, 0.25029e-02,-0.20398e-04, 0.20488e-03,
     a-0.19155e-04, 0.51200e+04, 0.51300e+04,
     a 0.18117e-01, 0.12425e+00, 0.13386e-01,-0.67752e-04, 0.10428e-01,
     a-0.62211e-04, 0.51300e+04, 0.51400e+04/
       data ((acr(k,j),k=1,8),j=  9, 16) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.51400e+04, 0.51500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.51500e+04, 0.51600e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.51600e+04, 0.51700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.51700e+04, 0.51800e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.51800e+04, 0.51900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.51900e+04, 0.52000e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.52000e+04, 0.52100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.52100e+04, 0.52200e+04/
       data ((acr(k,j),k=1,8),j= 17, 24) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.52200e+04, 0.52300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.52300e+04, 0.52400e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.52400e+04, 0.52500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.52500e+04, 0.52600e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.52600e+04, 0.52700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.52700e+04, 0.52800e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.52800e+04, 0.52900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.52900e+04, 0.53000e+04/
       data ((acr(k,j),k=1,8),j= 25, 32) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.53000e+04, 0.53100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.53100e+04, 0.53200e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.53200e+04, 0.53300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.53300e+04, 0.53400e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.53400e+04, 0.53500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.53500e+04, 0.53600e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.53600e+04, 0.53700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.53700e+04, 0.53800e+04/
       data ((acr(k,j),k=1,8),j= 33, 40) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.53800e+04, 0.53900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.53900e+04, 0.54000e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.54000e+04, 0.54100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.54100e+04, 0.54200e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.54200e+04, 0.54300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.54300e+04, 0.54400e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.54400e+04, 0.54500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.54500e+04, 0.54600e+04/
       data ((acr(k,j),k=1,8),j= 41, 48) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.54600e+04, 0.54700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.54700e+04, 0.54800e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.54800e+04, 0.54900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.54900e+04, 0.55000e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.55000e+04, 0.55100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.55100e+04, 0.55200e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.55200e+04, 0.55300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.55300e+04, 0.55400e+04/
       data ((acr(k,j),k=1,8),j= 49, 56) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.55400e+04, 0.55500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.55500e+04, 0.55600e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.55600e+04, 0.55700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.55700e+04, 0.55800e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.55800e+04, 0.55900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.55900e+04, 0.56000e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.56000e+04, 0.56100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.56100e+04, 0.56200e+04/
       data ((acr(k,j),k=1,8),j= 57, 64) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.56200e+04, 0.56300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.56300e+04, 0.56400e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.56400e+04, 0.56500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.56500e+04, 0.56600e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.56600e+04, 0.56700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.56700e+04, 0.56800e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.56800e+04, 0.56900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.56900e+04, 0.57000e+04/
       data ((acr(k,j),k=1,8),j= 65, 72) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.57000e+04, 0.57100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.57100e+04, 0.57200e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.57200e+04, 0.57300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.57300e+04, 0.57400e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.57400e+04, 0.57500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.57500e+04, 0.57600e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.57600e+04, 0.57700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.57700e+04, 0.57800e+04/
       data ((acr(k,j),k=1,8),j= 73, 80) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.57800e+04, 0.57900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.57900e+04, 0.58000e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.58000e+04, 0.58100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.58100e+04, 0.58200e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.58200e+04, 0.58300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.58300e+04, 0.58400e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.58400e+04, 0.58500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.58500e+04, 0.58600e+04/
       data ((acr(k,j),k=1,8),j= 81, 88) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.58600e+04, 0.58700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.58700e+04, 0.58800e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.58800e+04, 0.58900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.58900e+04, 0.59000e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.59000e+04, 0.59100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.59100e+04, 0.59200e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.59200e+04, 0.59300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.59300e+04, 0.59400e+04/
       data ((acr(k,j),k=1,8),j= 89, 96) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.59400e+04, 0.59500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.59500e+04, 0.59600e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.59600e+04, 0.59700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.59700e+04, 0.59800e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.59800e+04, 0.59900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.59900e+04, 0.60000e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.60000e+04, 0.60100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.60100e+04, 0.60200e+04/
       data ((acr(k,j),k=1,8),j= 97,104) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.60200e+04, 0.60300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.60300e+04, 0.60400e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.60400e+04, 0.60500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.60500e+04, 0.60600e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.60600e+04, 0.60700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.60700e+04, 0.60800e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.60800e+04, 0.60900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.60900e+04, 0.61000e+04/
       data ((acr(k,j),k=1,8),j=105,112) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.61000e+04, 0.61100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.61100e+04, 0.61200e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.61200e+04, 0.61300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.61300e+04, 0.61400e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.61400e+04, 0.61500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.61500e+04, 0.61600e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.61600e+04, 0.61700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.61700e+04, 0.61800e+04/
       data ((acr(k,j),k=1,8),j=113,120) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.61800e+04, 0.61900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.61900e+04, 0.62000e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.62000e+04, 0.62100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.62100e+04, 0.62200e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.62200e+04, 0.62300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.62300e+04, 0.62400e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.62400e+04, 0.62500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.62500e+04, 0.62600e+04/
       data ((acr(k,j),k=1,8),j=121,128) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.62600e+04, 0.62700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.62700e+04, 0.62800e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.62800e+04, 0.62900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.62900e+04, 0.63000e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.63000e+04, 0.63100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.63100e+04, 0.63200e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.63200e+04, 0.63300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.63300e+04, 0.63400e+04/
       data ((acr(k,j),k=1,8),j=129,136) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.63400e+04, 0.63500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.63500e+04, 0.63600e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.63600e+04, 0.63700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.63700e+04, 0.63800e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.63800e+04, 0.63900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.63900e+04, 0.64000e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.64000e+04, 0.64100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.64100e+04, 0.64200e+04/
       data ((acr(k,j),k=1,8),j=137,144) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.64200e+04, 0.64300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.64300e+04, 0.64400e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.64400e+04, 0.64500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.64500e+04, 0.64600e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.64600e+04, 0.64700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.64700e+04, 0.64800e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.64800e+04, 0.64900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.64900e+04, 0.65000e+04/
       data ((acr(k,j),k=1,8),j=145,152) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.65000e+04, 0.65100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.65100e+04, 0.65200e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.65200e+04, 0.65300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.65300e+04, 0.65400e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.65400e+04, 0.65500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.65500e+04, 0.65600e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.65600e+04, 0.65700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.65700e+04, 0.65800e+04/
       data ((acr(k,j),k=1,8),j=153,160) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.65800e+04, 0.65900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.65900e+04, 0.66000e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.66000e+04, 0.66100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.66100e+04, 0.66200e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.66200e+04, 0.66300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.66300e+04, 0.66400e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.66400e+04, 0.66500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.66500e+04, 0.66600e+04/
       data ((acr(k,j),k=1,8),j=161,168) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.66600e+04, 0.66700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.66700e+04, 0.66800e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.66800e+04, 0.66900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.66900e+04, 0.67000e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.67000e+04, 0.67100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.67100e+04, 0.67200e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.67200e+04, 0.67300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.67300e+04, 0.67400e+04/
       data ((acr(k,j),k=1,8),j=169,176) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.67400e+04, 0.67500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.67500e+04, 0.67600e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.67600e+04, 0.67700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.67700e+04, 0.67800e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.67800e+04, 0.67900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.67900e+04, 0.68000e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.68000e+04, 0.68100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.68100e+04, 0.68200e+04/
       data ((acr(k,j),k=1,8),j=177,184) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.68200e+04, 0.68300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.68300e+04, 0.68400e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.68400e+04, 0.68500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.68500e+04, 0.68600e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.68600e+04, 0.68700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.68700e+04, 0.68800e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.68800e+04, 0.68900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.68900e+04, 0.69000e+04/
       data ((acr(k,j),k=1,8),j=185,192) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.69000e+04, 0.69100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.69100e+04, 0.69200e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.69200e+04, 0.69300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.69300e+04, 0.69400e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.69400e+04, 0.69500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.69500e+04, 0.69600e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.69600e+04, 0.69700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.69700e+04, 0.69800e+04/
       data ((acr(k,j),k=1,8),j=193,200) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.69800e+04, 0.69900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.69900e+04, 0.70000e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.70000e+04, 0.70100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.70100e+04, 0.70200e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.70200e+04, 0.70300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.70300e+04, 0.70400e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.70400e+04, 0.70500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.70500e+04, 0.70600e+04/
       data ((acr(k,j),k=1,8),j=201,208) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.70600e+04, 0.70700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.70700e+04, 0.70800e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.70800e+04, 0.70900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.70900e+04, 0.71000e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.71000e+04, 0.71100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.71100e+04, 0.71200e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.71200e+04, 0.71300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.71300e+04, 0.71400e+04/
       data ((acr(k,j),k=1,8),j=209,216) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.71400e+04, 0.71500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.71500e+04, 0.71600e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.71600e+04, 0.71700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.71700e+04, 0.71800e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.71800e+04, 0.71900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.71900e+04, 0.72000e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.72000e+04, 0.72100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.72100e+04, 0.72200e+04/
       data ((acr(k,j),k=1,8),j=217,224) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.72200e+04, 0.72300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.72300e+04, 0.72400e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.72400e+04, 0.72500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.72500e+04, 0.72600e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.72600e+04, 0.72700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.72700e+04, 0.72800e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.72800e+04, 0.72900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.72900e+04, 0.73000e+04/
       data ((acr(k,j),k=1,8),j=225,232) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.73000e+04, 0.73100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.73100e+04, 0.73200e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.73200e+04, 0.73300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.73300e+04, 0.73400e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.73400e+04, 0.73500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.73500e+04, 0.73600e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.73600e+04, 0.73700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.73700e+04, 0.73800e+04/
       data ((acr(k,j),k=1,8),j=233,240) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.73800e+04, 0.73900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.73900e+04, 0.74000e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.74000e+04, 0.74100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.74100e+04, 0.74200e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.74200e+04, 0.74300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.74300e+04, 0.74400e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.74400e+04, 0.74500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.74500e+04, 0.74600e+04/
       data ((acr(k,j),k=1,8),j=241,248) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.74600e+04, 0.74700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.74700e+04, 0.74800e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.74800e+04, 0.74900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.74900e+04, 0.75000e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.75000e+04, 0.75100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.75100e+04, 0.75200e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.75200e+04, 0.75300e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.75300e+04, 0.75400e+04/
       data ((acr(k,j),k=1,8),j=249,256) /
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.75400e+04, 0.75500e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.75500e+04, 0.75600e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.75600e+04, 0.75700e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.75700e+04, 0.75800e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.75800e+04, 0.75900e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.75900e+04, 0.76000e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.76000e+04, 0.76100e+04,
     a 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00, 0.00000e+00,
     a 0.00000e+00, 0.76100e+04, 0.76200e+04/
c
      do i=1,8
      a(i)=acr(i,inu)
      enddo
c
      return
      end
