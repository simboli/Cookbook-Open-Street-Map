[out:csv(::count, ::"count:nodes", ::"count:ways", ::"count:relations")][timeout:20];

area["admin_level"=8]["boundary"="administrative"]["name"="Treviso"]->.searchArea;

(
  //Supermarket
  nwr["shop"="supermarket"](area.searchArea);
  //Convenience
  nwr["shop"="convenience"](area.searchArea);
);
out count;
