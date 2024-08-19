Qui si trovano i codici che permettono di passare dalle intensità sperimentali misurate (in Raw data.zip) alle S(Q) fino alle G(r).

calibration_final.ipynb: calibrazione da canali dello strumento a 2\theta e Q usando lo standard in nickel, si recupera anche la risoluzione del diffrattometro

read_Raw_data_v1.ipynb: visuallizare le diverse ripetizioni delle misure, normalizzarle allo stesso numero di conteggi e emediarle, rimuovendo rumore e dati anomali più lontani di 3\sigma dalla media. Verifica e rimozione del picco anomalo a 1400K. Da qui ottengo un pattern di diffrazione mediato e ripulito per ciascuna misura.

Simulations.ipynb: Codice epr far girare Trasb.f e MULTG.F e recuperare i valori dei paramnetri necessari per l'analisi a tutte le temperature sperimentali.

Data_treatment.ipynb: Trattamento dati di Petrillo e Sacchetti: da I(2\theta) a S(Q), 

Real_sapace.ipynb: Fourier transform, da S(Q) a G(r). Studio della coordinazone passando a N(r). Da qui si ottengono gli input per RMC.
