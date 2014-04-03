/**********************************************************

'World Map Bright'
=================
 
***********************************************************************/

@water: #86c8d5;
@land: #ffffdd;
@line: white;

/* Water bodies */
Map { 
  background-color: @water;
}

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

#riverslakes [zoom > 5] {
  line-width:1;
  line-color:@water;
}

//river also in this label but only a few

//ocean labeling
#marinelabels [zoom > 1] ["featurecla"= 'ocean'] {
  text-name:'[name]';
  text-face-name: @futura_med;
  text-size:10;
  text-halo-fill:rgba(255,255,255,0.5);
  text-halo-radius:2; 
}

//sea labeling
#marinelabels [zoom > 4] ["featurecla"= 'sea'] {
  text-name:'[name]';
  text-face-name: @futura_med;
  text-size:10;
  text-halo-fill:rgba(255,255,255,0.5);
  text-halo-radius:2; 
}

//other marine labeling
#marinelabels [zoom > 5] ["featurecla"= 'bay'] ["featurecla"= 'channel'] 
  ["featurecla"= 'strait'] ["featurecla"= 'sound'] ["featurecla"= 'reef']
{
  text-name:'[name]';
  text-face-name: @futura_med;
  text-size:10;
  text-halo-fill:rgba(255,255,255,0.5);
  text-halo-radius:2; 
}



#riverslakeslabels [zoom > 5] {
  [length > 6] {
  text-name:'[name]';
  text-face-name: @futura_med;
  text-size:10;
  text-halo-fill:rgba(255,255,255,0.5);
  text-halo-radius:2; 
  text-placement-type:simple;
  text-placement:line;
  text-min-distance:1000px;
   text-max-char-angle-delta: 15;}
}



#lakelabels [zoom > 4] [zoom <= 7] [scalerank < 1] {
  text-name:'[name]';
  text-face-name: @futura_med;
  text-size:10;
  text-halo-fill:white;
  text-halo-radius:1.5; 
  text-character-spacing:1;
}

#lakelabels [zoom > 7] [scalerank < 5]{
  text-name:'[name]';
  text-face-name: @futura_med;
  text-size:11;
  text-halo-fill:white;
  text-halo-radius:2; 
  text-character-spacing:1;
}
