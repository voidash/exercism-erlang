-module(rna_transcription).

-export([to_rna/1]).


to_rna(_Strand) -> transcript(_Strand,[]).

transcript([],Build)->
  lists:flatten(lists:reverse(Build));
transcript([A| R_strand],Build) ->

  case [A] of
              "G" -> transcript(R_strand,["C" | Build]);
              "C" -> transcript(R_strand,["G" | Build]);
              "T" -> transcript(R_strand,["A" | Build]);
              "A" -> transcript(R_strand,["U" | Build])
  end.



