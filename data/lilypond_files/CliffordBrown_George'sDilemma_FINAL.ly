\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "George's Dilemma"
  composer = "Clifford Brown"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble"
    \key des \minor

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }
      | r1 
      | des1:min7 | d1:maj | des1:min7 | b1:7 | des1:min7 | s1 | es2:7 aes2:7 | des1:min7 
      | s1 | d1:maj | des1:min7 | b1:7 | des1:min7 | s1 | es2:7 aes2:7 | des1:min7 
      | ges1:min7 | b1:7 | aes2:min7 a2:maj | aes2:min7 g2:dim | ges1:min7 | b1:7 | e2:maj a2:maj | d2:maj es4:min7 aes4:7 
      | des1:min7 | d1:maj | des1:min7 | b1:7 | des1:min7 | s1 | es2:7 aes2:7 | des1:min7 
      | s1 | d1:maj | des1:min7 | b1:7 | des1:min7 | s1 | es2:7 aes2:7 | des1:min7 
      | s1 | d1:maj | des1:min7 | b1:7 | des1:min7 | s1 | es2:7 aes2:7 | des1:min7 
      | ges1:min7 | b1:7 | e1:maj | s2 f2:dim | ges1:min7 | s2 b2:7 | e2:maj a2:7 | d2:maj aes2:775+ 
      | des1:min7 | d1:maj | des1:min7 | b1:7 | des1:min7 | s1 | es2:7 aes2:7 | des1:min7 
      | r1|
      }
      }

    \new Staff
    <<
    \transpose c' c'

    {
      \global
  		%\override Score.MetronomeMark #'transparent = ##t
  		%\override Score.MetronomeMark #'stencil = ##f

          \set Score.markFormatter = #format-mark-box-numbers

      \tempo 4 = 155
      \set Score.currentBarNumber = #0

      \bar "||" \mark \default r4 \tuplet 3/2 {g'8 gis'8 g'8~} g'8 fis'8 e'8 cis'8~ 
      \bar "||" \mark \default \tuplet 3/2 {cis'8 gis8 cis'8~^\markup{\left-align \small vib}} cis'2 r4 
      | r2 r8 b'4 a'16 b'16 
      | a'8 g'8 gis'8 gis'8~^\markup{\left-align \small vib} gis'2~ 
      | gis'4~ gis'16 fis'16 gis'16 fis'16~ \tuplet 3/2 {fis'8 g'8 gis'8} gis'8 fis'16 gis'16 
      | fis'8 e'8 cis'2~^\markup{\left-align \small vib} cis'8 gis8 
      | b16 dis'8 ais16~^\markup{\left-align \small vib} ais4. r8 r4 
      | r8 gis'8 \tuplet 3/2 {g'8 e'8 cis'8} e'8 dis'8 \tuplet 3/2 {cis'8 c'8 dis'8} 
      | cis'2^\markup{\left-align \small vib} r2 
      \bar "||" r8. gis'16~ gis'16 cis''8 dis''16~ dis''8 e''4 gis'8 
      | a'4 b'16 cis''16 b'16 a'16 b'16 cis''16 b'16 a'16 b'16 cis''16 b'16 a'16 
      | \tuplet 3/2 {gis'8 e'8 cis'8~^\markup{\left-align \small vib}} cis'2~ cis'16 dis'16 gis'8 
      | fis'8 cis'8 b2^\markup{\left-align \small vib} \tuplet 6/4 {gis'16 ais'16 gis'8 fis'8~} 
      | fis'16 e'16 cis'16 gis16~^\markup{\left-align \small vib} gis2~ \tuplet 6/4 {gis8 dis'16 f'16 dis'16 c'16~} 
      | \tuplet 6/4 {c'16 cis'16 dis'8 fis'16 gis'16} b'8 r8 r4 \tuplet 3/2 {gis'8 ais'4~} 
      | ais'8 gis'8 g'16 bes16 cis'16 e'16 \tuplet 3/2 {dis'8 cis'4} c'4~ 
      | \tuplet 6/4 {c'8. e'16 fis'16 a'16} gis'8 r8 r2 
      \bar "||" r8 gis'16 f'16 fis'16 gis'16 a'16 b'16 cis''16 e''8 cis''16 e''4~ 
      | e''8 b'16 a'16 fis'16 gis'16 a'16 b'16 cis''4 r4 
      | r8 cis''16 c''16 \tuplet 3/2 {b'8 a'4~} \tuplet 6/4 {a'8. cis''8 c''16~} c''16 b'16 gis'8~ 
      | gis'8 cis''16 c''16 b'16 fis'8.~ \tuplet 3/2 {fis'8 cis''8 c''8} b'16 e'16 r8 
      | r4 r8 gis'8 \tuplet 3/2 {fis'8 a'8 cis''8} e''4 
      | g''8 gis''8 fis''8 e''8 dis''8 cis''8 b'16 cis''16 b'16 a'16 
      | \tuplet 3/2 {gis'8 dis'8 fis'8} dis'8 e'8 gis'8 b'8 gis'8 a'8 
      | cis''8 e''8~ \tuplet 3/2 {e''8 cis''8 d''8} c''8 b'8 a'8 g'8\glissando  
      \bar "||" gis'8 cis'8~^\markup{\left-align \small vib} cis'2~ cis'8 r8 
      | r8 a'8 b'8 c''8 d''8 e''8 \tuplet 3/2 {fis''4 a''8~} 
      | a''8 gis''4. gis''8 r8 r4 
      | r8 gis''8 a''8. f''16~ f''16 fis''8 e''16~ e''16 dis''8 cis''16 
      | gis'4~ gis'16 cis'16 gis'8 e'4~ e'16 ais16 e'8 
      | \tuplet 3/2 {cis'4 gis8} \tuplet 3/2 {b4 ais8~^\markup{\left-align \small vib}} ais4 \tuplet 3/2 {cis'8 e'8 gis'8} 
      | g'8 r8 r8. a'16 gis'8 r8 r8 dis''8 
      | cis''4^\markup{\left-align \small vib} r2 gis'16 ais'16 cis''8 
      \bar "||" \mark \default \tuplet 3/2 {dis''4 cis''8} \tuplet 3/2 {dis''4 cis''8~} cis''16 a'16 ais'8 ais'8. cis''16~ 
      | \tuplet 3/2 {cis''8 dis''8 cis''8~} cis''16 dis''16 d''16 e''16~ \tuplet 6/4 {e''16 gis'16 a'8. a'16~} a'8 cis''8 
      | dis''8 cis''8 dis''8 cis''8~ cis''16 gis'16\glissando  ais'8 \tuplet 3/2 {ais'4 dis''8~} 
      | dis''8 dis''8 cis''8 a'8 gis'8 fis'8 e'8 cis'8 
      | gis4. b8 dis'8 c'8 cis'8 dis'8 
      | e'8 fis'8~ fis'16 gis'8 b'16~ b'16 dis''8 cis''16 b'8 gis'8 
      | bes'8 cis'8 \tuplet 3/2 {e'4 gis'8} \tuplet 3/2 {g'4 fis'8~} \tuplet 6/4 {fis'16 e'4 cis'16} 
      | \tuplet 3/2 {dis'4 cis'8~^\markup{\left-align \small vib}} cis'8 r8 r2 
      \bar "||" r8 a'8 cis''8 e''8~ \tuplet 3/2 {e''8 g''8 gis''8~^\markup{\left-align \small vib}} gis''4~ 
      | gis''4 \tuplet 3/2 {g''8 e''8 e''8~} e''16 cis''8 b'16~ b'16 gis'8 g'16 
      | fis'8 e'8 \tuplet 3/2 {cis'8 gis8 e'8~} e'4 fis'4~ 
      | fis'4 gis'16 ais'16 gis'16 fis'16 gis'16 ais'16 gis'16 fis'16~ fis'16 e'8 cis'16 
      | gis4. \tuplet 6/4 {dis'16 f'16 dis'16} \tuplet 6/4 {c'16 cis'8 e'16 dis'16 fis'16} gis'4 
      | r4 r8 dis''16 c''16 \tuplet 3/2 {cis''8 gis'8 cis'8} gis'8 r8 
      | r4 r8 dis'16 g'16~ g'16 a'8 gis'16~ gis'8 dis'8 
      | c'16 cis'8. r2 r8 gis'8 
      \bar "||" fis'8 a'8 cis''8 e''8 \tuplet 3/2 {g''8 gis''4} gis''4 
      | gis''8 fis''8 e''8 cis''8~ cis''16 a'8 d''16 cis''16 a'16 gis'16 fis'16~ 
      | fis'16 b'8 g'16 gis'8 b'8 cis''8 dis''8 fis''8 e''8 
      | dis''8 b'8 cis''8 dis''8~ dis''16 cis''16 d''16 bes'16 c''8 d''8~ 
      | d''16 cis''8 a'16 b'8 cis''8~ \tuplet 6/4 {cis''16 gis'16 ais'16 gis'16 a'8} f'8 gis'8 
      | fis'8 cis'8 e'8 d'8 \tuplet 6/4 {dis'16 f'16 fis'16 a'16 c''8} b'8 a'8 
      | gis'8 dis'8 fis'8 dis'8 e'8 fis'8 gis'8 b'8~ 
      | b'16 g'16 a'8 gis'8 fis'8 e'8 d'8 c'8 a8 
      \bar "||" gis8 dis'8 \tuplet 3/2 {cis'4 ais8~^\markup{\left-align \small vib}} ais4 r4 
      | r4 \tuplet 3/2 {fis'8 a'8 c''8~} c''8 e''8~ \tuplet 6/4 {e''16 b'16 a'8 g'16 a'16~} 
      | a'32 g'32~ g'8 g'32 gis'32~^\markup{\left-align \small vib} gis'2~ gis'8 r8 
      | r8. f'16~ f'16 fis'16 a'16 cis''16~ \tuplet 3/2 {cis''8 f''8 fis''8} \tuplet 6/4 {gis''8 fis''8. e''16~} 
      | \tuplet 3/2 {e''8 cis''8 gis'8~} gis'8 cis'8~^\markup{\left-align \small vib} cis'2~ 
      | cis'8 g'16 gis'16 fis'8 e'8 \tuplet 3/2 {cis'4 cis'8~} cis'8 gis'8 
      | g'8 bes8 cis'8 e'8 dis'16 fis'16 a'8 c''8 dis''8 
      | cis''4 \tuplet 3/2 {g'8 gis'4} fis'4 e'8 cis'8 
      \bar "||" gis8 r8 r2.\bar  ".."
    }
    >>
>>    
}
