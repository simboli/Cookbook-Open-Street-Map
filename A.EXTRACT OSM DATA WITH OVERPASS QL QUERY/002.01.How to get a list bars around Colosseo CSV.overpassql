[out:csv( ::id,"name",::count,"addr:street","addr:housenumber",::lat,::lon;
true; "|"
)][timeout:30];
rel[name="Colosseo"][tourism="attraction"];
(nwr[amenity=bar](around:1000.0);
);
out center;
out count;
