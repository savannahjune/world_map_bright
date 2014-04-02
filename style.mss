/**********************************************************

'World Map Bright'
=================
 

### cities [populated_places_by_pop.zip]

This is essentially Natural Earth's Populated Places 
shapefile, but the elements have been reordered such by
population (descending). This is to take advantage of the 
fact that Mapnik will give priority to elements stored first
in the datasource. Using various classification attributes 
in the shapefile, only certain cities will be shown at 
certain zoom levels.

### country-name [country-labels.zip]

Labeled points of the world's country names. Derived from 
Natural Earth Data but hand-tweaked by MapBox.

### geo-lines [geographic-lines.zip]

Important lines such as the equator, Arctic and Antarctic 
circles, and the international date line.

### admin-0-line-land [admin-0-line-land.zip]

These are international borders that occur over land or 
lakes. International maritime borders are a separate layer.

### lakes [lakes.zip]

The world's lakes. The style is designed such that smaller 
lakes only appear as you zoom in.

### rivers [rivers_lake_centerlines_scale_ranks.zip]

### country [admin_0_countries.zip]

Countries - the rainbow.mss stylesheet colors each of these
individually.

### land-glow [admin_0_countries.zip]

A copy of the country layer providing the shadow/glow around
the continents.
 
***********************************************************************/

@water: #86c8d5;
@land: #ffffdd;
@line: white;

/* Water bodies */
Map { 
  background-color: @water;
}
/*

.border.country[zoom>1],
.border.disputed[zoom>2] {
  line-width:1;
  line-color:#fff;
  line-join:round;
  .country[FeatureCla='Disputed (please verify)'] {
    [zoom=3] { line-dasharray:4,1; }
    [zoom=4] { line-dasharray:5,2; }
    [zoom=5] { line-dasharray:6,2; }
    [zoom=6] { line-dasharray:8,3; }
    [zoom>6] { line-dasharray:10,3; }
  }
  .disputed[FeatureCla='Breakaway'] {
    [zoom=3] { line-dasharray: 3,2; }
    [zoom=4] { line-dasharray: 4,4; }
    [zoom=5] { line-dasharray: 5,5; }
    [zoom=6] { line-dasharray: 6,6; }
    [zoom>6] { line-dasharray: 8,8; }
  }
  .disputed[FeatureCla='Claim boundary'] { 
    line-dasharray: 1,3;
    [zoom>6] { line-dasharray: 2,4; }
  }
  .country[FeatureCla='Indefinite (please verify)'] {
    line-dasharray: 6,1;
  }
}

#state[ADM0_A3="USA"],
#state[ADM0_A3="CAN"],
#state[ADM0_A3="AUS"] {
  [zoom>3] {
    line-color:@line;
    line-opacity:0.25;
    line-width:1.2;
    line-dasharray:6,2,2,2;
  }
}
*/


/* names of islands, capes, poles, waterfalls, plains 
#regionpoints {
  marker-width:6;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
}
*/

#lakespoly {
  polygon-opacity:1;
  polygon-fill:@water;
}

#riverslakes [zoom >5] {
  line-width:1;
  line-color:@water;
}




