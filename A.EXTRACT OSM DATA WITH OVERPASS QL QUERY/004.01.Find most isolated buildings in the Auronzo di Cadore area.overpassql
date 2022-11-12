area["admin_level"=8]["boundary"="administrative"]["name"="Auronzo di Cadore"]->.searchArea;

way[building](area.searchArea)->.a;

foreach .a (
  way.a(around:1000);
  way._(if:count(ways) == 1);
  out center;
);
