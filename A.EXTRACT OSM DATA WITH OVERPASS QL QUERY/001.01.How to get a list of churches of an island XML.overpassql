[timeout:20];

area["place"="island"]["name"="Murano"]->.boundaryarea;

(
node(area.boundaryarea)["building"="church"];
way(area.boundaryarea)["building"="church"];
relation(area.boundaryarea)["building"="church"];
);

out center;
out count;
