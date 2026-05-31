(* Floor harp string schedule starter. Values are first-pass assumptions. *)
ClearAll["Global`*"];
a4 = 440;
freqFromMidi[m_] := a4*2^((m - 69)/12);
notes = {48, 50, 52, 53, 55, 57, 59, 60, 62, 64, 65, 67, 69, 71, 72, 74, 76, 77, 79, 81, 83, 84}; (* C3 through C6 diatonic *)
scaleLengthIn[m_] := 13 + (42 - 13)*(84 - m)/(84 - 48);

Dataset[
  Table[
    <|"midi" -> m, "frequencyHz" -> N[freqFromMidi[m]],
      "firstPassScaleLengthIn" -> N[scaleLengthIn[m]]|>,
    {m, notes}
  ]
]
