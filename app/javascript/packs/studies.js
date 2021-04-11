
var frets = [ 52,
  118,
  184,
  250,
  316,
  382,
  448,
  514,
  580,
  646,
  712,
  781,
  844,
  910,
  976,
  1042,
  1108,
  1174,
  1240,
  1306,
  1372,
  1438,
  1504,
  1570
]

var strings = [
  "12",
  "37",
  "62",
  "87",
  "112",
  "137"
]

var notes_sharps = [ "C",
  "^C",
  "D",
  "^D",
  "E",
  "F",
  "^F",
  "G",
  "^G",
  "A",
  "^A",
  "B"
]

var notes_flats = [ "C",
  "_D",
  "D",
  "_E",
  "E",
  "F",
  "_G",
  "G",
  "_A",
  "A",
  "_B",
  "B"
]

var guitar_notes = new Array();
// C
guitar_notes[0] = new Map([[frets[7], strings[5]], [frets[19], strings[5]],
                        [frets[2], strings[4]], [frets[14], strings[4]],
                            [frets[9], strings[3]], [frets[21], strings[3]],
                    [frets[4], strings[2]], [frets[16], strings[2]],
                    [frets[11], strings[1]], [frets[23], strings[1]],
                    [frets[6], strings[0]], [frets[18], strings[0]],
])
// C#/Db
guitar_notes[1] = new Map([[frets[8], strings[5]], [frets[20], strings[5]],
                    [frets[3], strings[4]], [frets[15], strings[4]],
                    [frets[10], strings[3]], [frets[22], strings[3]],
                    [frets[5], strings[2]], [frets[17], strings[2]],
                    [frets[12], strings[1]], [frets[0], strings[1]],
                    [frets[7], strings[0]], [frets[19], strings[0]],
])
// D
guitar_notes[2] = new Map([[frets[9], strings[5]], [frets[21], strings[5]],
                    [frets[4], strings[4]], [frets[16], strings[4]],
                    [frets[11], strings[3]], [frets[23], strings[3]],
                    [frets[6], strings[2]], [frets[18], strings[2]],
                    [frets[13], strings[1]], [frets[1], strings[1]],
                    [frets[8], strings[0]], [frets[20], strings[0]],
])
// D#/Eb
guitar_notes[3] = new Map([[frets[10], strings[5]], [frets[22], strings[5]],
                        [frets[5], strings[4]], [frets[17], strings[4]],
                            [frets[12], strings[3]], [frets[0], strings[3]],
                    [frets[7], strings[2]], [frets[19], strings[2]],
                    [frets[14], strings[1]], [frets[2], strings[1]],
                    [frets[9], strings[0]], [frets[21], strings[0]],
])
// E
guitar_notes[4] = new Map([[frets[11], strings[5]], [frets[23], strings[5]],
                        [frets[6], strings[4]], [frets[18], strings[4]],
                            [frets[13], strings[3]], [frets[1], strings[3]],
                    [frets[8], strings[2]], [frets[20], strings[2]],
                    [frets[15], strings[1]], [frets[3], strings[1]],
                    [frets[10], strings[0]], [frets[22], strings[0]],
])
// F
guitar_notes[5] = new Map([[frets[12], strings[5]], [frets[0], strings[5]],
                        [frets[7], strings[4]], [frets[19], strings[4]],
                            [frets[14], strings[3]], [frets[2], strings[3]],
                    [frets[9], strings[2]], [frets[21], strings[2]],
                    [frets[16], strings[1]], [frets[4], strings[1]],
                    [frets[11], strings[0]], [frets[23], strings[0]],
])
// F#/Gb
guitar_notes[6] = new Map([[frets[13], strings[5]], [frets[1], strings[5]],
                        [frets[8], strings[4]], [frets[20], strings[4]],
                            [frets[15], strings[3]], [frets[3], strings[3]],
                    [frets[10], strings[2]], [frets[22], strings[2]],
                    [frets[17], strings[1]], [frets[5], strings[1]],
                    [frets[12], strings[0]], [frets[0], strings[0]],
])
// G
guitar_notes[7] = new Map([[frets[14], strings[5]], [frets[2], strings[5]],
                        [frets[9], strings[4]], [frets[21], strings[4]],
                            [frets[16], strings[3]], [frets[4], strings[3]],
                    [frets[11], strings[2]], [frets[23], strings[2]],
                    [frets[18], strings[1]], [frets[6], strings[1]],
                    [frets[13], strings[0]], [frets[1], strings[0]],
])
// G#/Ab
guitar_notes[8] = new Map([[frets[15], strings[5]], [frets[3], strings[5]],
                        [frets[10], strings[4]], [frets[22], strings[4]],
                                [frets[17], strings[3]], [frets[5], strings[3]],
                    [frets[12], strings[2]], [frets[0], strings[2]],
                    [frets[19], strings[1]], [frets[7], strings[1]],
                    [frets[14], strings[0]], [frets[2], strings[0]],
])
// A
guitar_notes[9] = new Map([[frets[16], strings[5]], [frets[4], strings[5]],
                        [frets[11], strings[4]], [frets[23], strings[4]],
                                [frets[18], strings[3]], [frets[6], strings[3]],
                    [frets[13], strings[2]], [frets[1], strings[2]],
                    [frets[20], strings[1]], [frets[8], strings[1]],
                    [frets[15], strings[0]], [frets[3], strings[0]],
])
// A#/Bb
guitar_notes[10] = new Map([[frets[17], strings[5]], [frets[5], strings[5]],
                                [frets[12], strings[4]], [frets[0], strings[4]],
                                [frets[19], strings[3]], [frets[7], strings[3]],
                    [frets[14], strings[2]], [frets[2], strings[2]],
                    [frets[21], strings[1]], [frets[9], strings[1]],
                    [frets[16], strings[0]], [frets[4], strings[0]],
])
// B
guitar_notes[11] = new Map([[frets[18], strings[5]], [frets[6], strings[5]],
                        [frets[13], strings[4]], [frets[1], strings[4]],
                                [frets[20], strings[3]], [frets[8], strings[3]],
                    [frets[15], strings[2]], [frets[3], strings[2]],
                    [frets[22], strings[1]], [frets[10], strings[1]],
                    [frets[17], strings[0]], [frets[5], strings[0]],
])


var frequencies = [
  "440",
  "415.30",
  "392.00",
  "369.99",
  "349.23",
  "329.63",
  "311.13",
  "293.66",
  "277.18",
  "261.63",
  "246.94",
  "233.08"
]
var frequencies_dict = {
  "440": "A",
  "415.30": "G#/Ab",
  "392.00": "G",
  "369.99": "F#/Gb",
  "349.23": "F",
  "329.63": "E",
  "311.13": "D#/Eb",
  "293.66": "D",
  "277.18": "C#/Db",
  "261.63": "C",
  "246.94": "B",
  "233.08": "A#/Bb"
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
    $("#play").hide();
    $("#pause").show();
    Metronome.playing = true;
    var audio_player = $("#click" + $('#tempo_value-hidden').text());
    audio_player.src = '/static/audio/' + $('#tempo_value-hidden').text() + 'bpm.mp3';
    audio_player[0].play();
  },
  pause: function () {
    $("#play").show();
    $("#pause").hide();
    Metronome.playing = false;
    $("audio").each(function() {
      this.pause();
    });;
  }
}

function set_notes() {
  var svgns = "http://www.w3.org/2000/svg"
  var svg  = $("svg");
  var svg_offset = svg.offset();
  var highlight = $("#neck-position-div");
  var highlight_offset = highlight.offset();
  var key = $("#key").val()-1;
  var tones = []
  let i = 1
  highlight.resizable().draggable();
  highlight.resizable({containment: 'parent'});
  highlight.draggable({containment: '#fretboard'});
  var formula = $("#formula").val();
  array = formula.split(" ");
  for (const scale_degree of array) {
    key_offset = parseInt(key) + parseInt(scale_degree);
    if (key_offset > 11) {
            key_offset = key_offset - 12
    }
    tones = guitar_notes[key_offset]
    for (let [x, y] of tones) {
      if (i == 1) {
        stroke_color = "rgb(300, 0, 100)";
      } else {
        stroke_color = "rgb(10, 0, 0)";
      }
      var circle = document.createElementNS(svgns, 'circle');
      circle.classList.add("notes");
      circle.setAttributeNS(null, 'cx', parseInt(x));
      circle.setAttributeNS(null, 'cy', parseInt(y));
      circle.setAttributeNS(null, 'r', 4);
      circle.setAttributeNS(null, 'style', 'fill: none; stroke: ' + stroke_color + '; stroke-width: 8px;' );
      svg.append(circle);
    }
  i++;
  }
  $( ".notes" ).each(function( index ) {
    var offset = $(this).offset();
    if (( offset.top < highlight_offset.top ) || ( offset.left < highlight_offset.left ) || ( offset.top > highlight_offset.top + highlight.height() ) || ( offset.left > highlight_offset.left + highlight.width())) {
      $(this).hide();
    }
  });
}



function display_seventh_chords() {
  var key = $("#key").val()-1;
  var tones = []
  var abc_formula = $("#formula").val();
  for (const scale_degree of abc_formula.split(" ")) {
    key_offset = parseInt(key) + parseInt(scale_degree);
    if (key_offset > 11) {
      tmp = notes_flats[key_offset -12]
      tmp = tmp.toString();
      tmp = tmp.toLowerCase();
      tones.push(tmp);
    } else {
      tones.push(notes_flats[key_offset]);
    }
  }
  tmp = notes_flats[parseInt(abc_formula[0]) + parseInt(key)];
  tmp = tmp.toString();
  tmp = tmp.toLowerCase();
  tones.push(tmp);
  var abc = "T: Diatonic Seventh Chords's\n" +
      			"M: 4/4\n" +
		  	    "L: 1\n" +
			      "|" + tones.join(" ") + "|"
	ABCJS.renderAbc("paper", abc);
}


$( document ).on("turbolinks:load", ()=> {
  $("#tempo-slider").slider({
    orientation: "horizontal",
    range: false,
    min: 40,
    max: 220,
    value: 120,
    step: 10,
    animate: true,
    slide: function (event, ui) {
      $("#tempo_value").text(ui.value + " BPM");
      $("#tempo_value-hidden").text(ui.value);
      Metronome.pause();
    }
  });
  $('#tuning-slider').slider({
    orientation: "horizontal",
    range: false,
    min:0,
    max: 11,
    step:1,
    value:0,
    animate: true,
    slide:function(event, ui){
      $('#tuning-note-value-hidden').text(frequencies[ui.value]);
      $('#tuning-note-value').text(frequencies_dict[frequencies[ui.value]]);
    }
  });
  $("#tuning-note").click(Tuning.play_note);
  $("#play").click(Metronome.play);
  $("#pause").click(Metronome.pause);
  $("#adjust-fretboard").click(set_notes);
  if (top.location.pathname.match('\/guitar_studies\/[0-9]')) {
    set_notes(); 
  }
  if (top.location.pathname.match('\/guitar_studies\/[0-9]')) {
    display_seventh_chords();
  }
});