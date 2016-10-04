set FERME;

param ares >=0;
param vaches >=0;
param rendement{FERME}>=0;
param consommation{FERME}>=0;
param vente_max{FERME}>=0;
param prix{FERME}>=0;
param qte_vendue{FERME}>=0;

var qte_vendue {f in FERME}<=vente_max [f];
maximize profit : 
sum{f in FERME} vaches * 200 + qte_vendue [f] * prix [f];
subject to prod{f in FERME}:
qte_vendue[f] =rendement[p]-consommation[p]







data;

set FERME:= betterave ble mais;
param ares=200;
param: rendement    consommation    vente_max   prix
betterave   1           0.6             10       100
ble         0.6         0.2             20       200
mais        0.5         0.2             20       90
