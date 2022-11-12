[out:csv( ::id,"name",::count,"denomination","religion","start_date","note","wikidata",::lat,::lon;
  true; "|"
)][timeout:20];

area["place"="island"]["name"="Murano"]->.boundaryarea;

(
node(area.boundaryarea)["building"="church"];
way(area.boundaryarea)["building"="church"];
relation(area.boundaryarea)["building"="church"];
);

out center;
out count;
