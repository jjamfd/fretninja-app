var frets = [ -22,
  170,
  332,
  487,
  635,
  776,
  910,
  1037,
  1157,
  1270,
  1376,
  1475,
  1567
]

var lowefrets = [ -21,
  169,
  331,
  486,
  634,
  775,
  909,
  1036,
  1156,
  1269,
  1375,
  1474,
  1566
]

var strings = [
  "24",
  "72",
  "122",
  "172",
  "222",
  "272"
]

var flatkeys = [
  "C",
  "F",
  "Bb",
  "Eb",
  "Ab",
  "Db",
  "Gb"
]

var sharpkeys = [ 
  "G",
  "D",
  "A",
  "E",
  "B",
  "F#",
  "C#",
  "G#",
  "D#",
  "A#"
]

var guitar_notes = new Array();
// C
guitar_notes[0] = new Map([
  [lowefrets[8], strings[5]],
  [frets[3], strings[4]],
  [frets[10], strings[3]],
  [frets[5], strings[2]],
  [frets[1], strings[1]],
  [frets[8], strings[0]]
])
// C#/Db
guitar_notes[1] = new Map([
  [lowefrets[9], strings[5]],
  [frets[4], strings[4]],
  [frets[11], strings[3]],
  [frets[6], strings[2]],
  [frets[2], strings[1]],
  [frets[9], strings[0]]
])
// D
guitar_notes[2] = new Map([
  [lowefrets[10], strings[5]],
  [frets[5], strings[4]],
  [frets[12], strings[3]], 
  [frets[0], strings[3]], 
  [frets[7], strings[2]],
  [frets[3], strings[1]],
  [frets[10], strings[0]]
])
// D#/Eb
guitar_notes[3] = new Map([
  [lowefrets[11], strings[5]],
  [frets[6], strings[4]],
  [frets[1], strings[3]],
  [frets[8], strings[2]],
  [frets[4], strings[1]],
  [frets[11], strings[0]]
])
// E
guitar_notes[4] = new Map([
  [lowefrets[0], strings[5]],
  [lowefrets[12], strings[5]],
  [frets[7], strings[4]],
  [frets[2], strings[3]],
  [frets[9], strings[2]],
  [frets[5], strings[1]],
  [frets[0], strings[0]],
  [frets[12], strings[0]]
])
// F
guitar_notes[5] = new Map([
  [lowefrets[1], strings[5]],
  [frets[8], strings[4]],
  [frets[3], strings[3]],
  [frets[10], strings[2]],
  [frets[6], strings[1]],
  [frets[1], strings[0]]
])
// F#/Gb
guitar_notes[6] = new Map([
  [lowefrets[2], strings[5]],
  [frets[9], strings[4]],
  [frets[4], strings[3]],
  [frets[11], strings[2]],
  [frets[7], strings[1]],
  [frets[2], strings[0]]
])
// G
guitar_notes[7] = new Map([
  [lowefrets[3], strings[5]],
  [frets[10], strings[4]],
  [frets[5], strings[3]],
  [frets[0], strings[2]],
  [frets[12], strings[2]],
  [frets[8], strings[1]],
  [frets[3], strings[0]],
])
// G#/Ab
guitar_notes[8] = new Map([
  [lowefrets[4], strings[5]],
  [frets[11], strings[4]],
  [frets[6], strings[3]],
  [frets[1], strings[2]],
  [frets[9], strings[1]],
  [frets[4], strings[0]]
])
// A
guitar_notes[9] = new Map([
  [lowefrets[5], strings[5]],
  [frets[0], strings[4]],
  [frets[12], strings[4]],
  [frets[7], strings[3]],
  [frets[2], strings[2]],
  [frets[10], strings[1]],
  [frets[5], strings[0]]
])
// A#/Bb
guitar_notes[10] = new Map([
  [lowefrets[6], strings[5]],
  [frets[1], strings[4]],
  [frets[8], strings[3]],
  [frets[3], strings[2]],
  [frets[11], strings[1]],
  [frets[6], strings[0]]
])
// B
guitar_notes[11] = new Map([
  [lowefrets[7], strings[5]],
  [frets[2], strings[4]],
  [frets[9], strings[3]],
  [frets[4], strings[2]],
  [frets[12], strings[1]],
  [frets[0], strings[1]],
  [frets[7], strings[0]]
])

var frequencies = [
  "261.63",
  "277.18",
  "293.66",
  "311.13",
  "329.63",
  "349.23",
  "369.99",
  "392.00",
  "415.30",
  "440",
  "233.08",
  "246.94"
]

var frequencies_dict = {
  "261.63": "C",
  "277.18": "C#/Db",
  "293.66": "D",
  "311.13": "D#/Eb",
  "329.63": "E",
  "349.23": "F",
  "369.99": "F#/Gb",
  "392.00": "G",
  "415.30": "G#/Ab",
  "440": "A",
  "233.08": "A#/Bb",
  "246.94": "B"
}

var Tuning = {
  play_note: function () {
    let audioCtx = new AudioContext();
    let osc = audioCtx.createOscillator();
    osc.frequency.value = $("#tuning-note-value-hidden").text();
    osc.connect(audioCtx.destination);
    osc.start()
    osc.stop(audioCtx.currentTime + 5);
  }
}

var Metronome = {
  playing: false,
  play: function () {
    Metronome.playing = true;
    var audio_player = $("#click" + $('#tempo-value-hidden').text());
    audio_player.src = 'assets/audio/' + $('#tempo-value-hidden').text() + 'bpm.mp3';
    audio_player[0].play();
  },
  pause: function () {
    Metronome.playing = false;
    $("audio").each(function() {
      this.pause();
    });;
  }
}


function set_notes() {
  
  var svgns = "http://www.w3.org/2000/svg"
  var svg  = $("#guitar-svg");
  var highlight = $("#neck-position-div");
  var highlight_offset = highlight.offset();
  var keyObj = document.getElementById("key")
  var key = keyObj.value;
  var keyname = keyObj.options[keyObj.selectedIndex].text;
  var formula_radio_btn = document.getElementsByName('formula');
  for (var n = 0; n < formula_radio_btn.length; n++) {
    if (formula_radio_btn[n].checked) {
      var formula = formula_radio_btn[n].value;
      if (formula == 0 ) {
        formula_id = "#scale-formula";
        $("#chord-formula").hide();
        $("#interval-formula").hide();
        $("#scale-formula").show();
      } else if (formula == 1 ) {
        formula_id = "#chord-formula";
        $("#scale-formula").hide();
        $("#interval-formula").hide();
        $("#chord-formula").show();
      } else if (formula == 2 ) {
        formula_id = "#interval-formula";
        $("#chord-formula").hide();
        $("#scale-formula").hide();
        $("#interval-formula").show();
      }
    }
  }
  formula = $(formula_id).val().trim();
  var check = document.getElementById('show-hide-checkbox');

  // adjust fretboard viewport
  highlight.resizable().draggable();
  highlight.resizable({containment: 'parent'});
  highlight.draggable({containment: '#fretboard'});

  // clear notes before setting
  $( ".notes" ).each(function( index ) {
    $(this).remove();
  });

  if (check.checked) {
    $('#neck-position-div').hide();
  } else {
    $('#neck-position-div').show();
  }

  // loop through scale degrees in the given formula and 
  // create note elements on the static fretboard
  var tones = []
  //var notenames = []
  var realnotes = []
  let i = 1
  let id = 1
  for (const scale_degree of formula.split(" ")) {
    key_offset = parseInt(key) + parseInt(scale_degree);
    if (key_offset > 11) {
      key_offset = key_offset - 12
    }

    // process circle and text elements
    tones = guitar_notes[key_offset]
    for (let [x, y] of tones) {
      if (i == 1) {
        stroke_color = "rgba(0, 220, 220, 1)";
      } else {
        //violet
        stroke_color = "rgba(255, 0, 175, 1)";
      } 

      var notes_g = document.createElementNS(svgns, 'g');
      var circle = document.createElementNS(svgns, 'circle');
      var text = document.createElementNS(svgns, 'text')
      circle.setAttributeNS(null, 'cx', parseInt(x));
      circle.setAttributeNS(null, 'cy', parseInt(y));
      circle.setAttributeNS(null, 'r', 15);
      circle.setAttributeNS(null, 'style', 'fill:' + stroke_color + '; stroke: white; stroke-width: 2px;' );
      circle.setAttributeNS(null, 'id', parseInt(id));
      
      notes_g.classList.add("notes");
      notes_g.setAttributeNS(null, 'style', 'display: none;')
      notes_g.appendChild(circle);
      svg.append(notes_g);
      id++;
    }
    i++;
  }

  if (!check.checked) {
    $( ".notes" ).each(function( index ) {  
      var offset = $(this).offset();
      offset_top = offset.top + 14;
      offset_left = offset.left + 14;
      console.log(offset_left);
      console.log(highlight_offset.left );
      if (( offset_top < highlight_offset.top ) || ( offset_left < highlight_offset.left ) || ( offset_top > highlight_offset.top + highlight.height() ) || ( offset_left > highlight_offset.left + highlight.width())) {
        $(this).hide();
      } else {
        $(this).show();
      }
    });
  } else {
    $( ".notes" ).each(function( index ) { 
      $(this).show();
    });
  }
}

function show_hide_viewport() {
  var check = document.getElementById('show-hide-checkbox');
  if (check.checked) {
    $('#neck-position-div').hide();

  } else {
    $('#neck-position-div').show();

  }
  set_notes();
}

$( document ).ready(function() {
  //metronome slider
  $("#tempo-slider").slider({
    orientation: "horizontal",
    range: false,
    min: 40,
    max: 220,
    value: 40,
    step: 10,
    animate: true,
    slide: function (event, ui) {
      $("#tempo-value").text(ui.value);
      $("#tempo-value-hidden").text(ui.value);
      Metronome.pause();
    }
  });
  //tuning note slider
  $('#tuning-slider').slider({
    orientation: "horizontal",
    range: false,
    min:0,
    max: 11,
    step:0,
    value:0,
    animate: true,
    slide:function(event, ui){
      $('#tuning-note-value-hidden').text(frequencies[ui.value]);
      $('#tuning-note-value').text(frequencies_dict[frequencies[ui.value]]);
    }
  });
  $("#play-note").mouseup(Tuning.play_note);
  $("#play").click(Metronome.play);
  $("#pause").click(Metronome.pause);
  $("#neck-position-div").mouseup(set_notes);
  $("#adjust-fretboard").click(set_notes);
  $("#show-hide-checkbox").click(show_hide_viewport);
  $("#formula-radio").click(set_notes);
  $("#scale-formula").change(set_notes);
  $("#chord-formula").change(set_notes);
  $("#interval-formula").change(set_notes);
  $("#key").change(set_notes);


  set_notes(); 
});

