(* Floor harp string schedule starter. Values are first-pass assumptions. *)
ClearAll["Global`*"];
a4 = 440;
freqFromMidi[m_] := a4*2^((m - 69)/12);
notes = Range[48, 84]; (* C3 through C6 chromatic range; select diatonic rows later *)
scaleLengthIn[m_] := 13 + (42 - 13)*(84 - m)/(84 - 48);

Dataset[
  Table[
    <|"midi" -> m, "frequencyHz" -> N[freqFromMidi[m]],
      "firstPassScaleLengthIn" -> N[scaleLengthIn[m]]|>,
    {m, notes}
  ]
]
