// Based on this example https://wiki.openstreetmap.org/wiki/Overpass_API/Overpass_API_by_Example#:~:text=away%20from%20police-,stations,-Find%20banks%20where

[out:json][bbox:{{bbox}}][timeout:800];

// determine set of police stations
(
  nwr[amenity=police];
)->.polices; // put them into the set "polices"

// determine set of banks
(
  nwr[amenity=bank];
)->.banks; // put them into the set "banks"

// determine set of banks near police stations
(
  nwr.banks(around.polices:3000);
)->.banksNearPolices; // put them into the set "banksNearPolices"

// determine banks far from police stations
(.banks; - .banksNearPolices;);

// return node, ways, relations as determined above
out geom meta;
