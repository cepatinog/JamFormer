\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Bitches Brew (Solo 2)"
  composer = "Miles Davis"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble"
    \key c \major

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }

      | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 
      | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 
      | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 
      | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 
      | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 
      | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 
      | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 
      | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 
      | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4|
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

      \tempo 4 = 100
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default r1 
      | r1 
      | r8 g'8 c''4 ais'4. r8 
      | r1 
      | r8. e''16 fis''4 dis''4. r8 
      | r1 
      | r8 fis'16 ais'16 gis'16 ais'16 b'16 cis''16 dis''16 e''16 f''16 fis''16 \tuplet 3/2 {f''8 e''8 dis''8} 
      | c''4 fis'8 e'4 dis'4.~ 
      | dis'8 r8 r2. 
      | r2. r8. g'16 
      | \tuplet 3/2 {c''4 dis''8~} dis''4\glissando  c'''4 r4 
      | r4 \tuplet 3/2 {c''4 a'8} fis'4 dis'8. dis'16 
      | e'4.. dis'16~ dis'2~ 
      | dis'8\bendAfter #-4  r8 r2. 
      | r8 dis''8 dis''4\glissando  ais''4 r4 
      | r2 e''8 dis''8 c''8 gis'8 
      | \tuplet 3/2 {g'8\glissando  a'4} gis'8 g'4 r8 r4 
      | r2. r8 ais'8 
      | \tuplet 3/2 {cis''8 dis''4~} dis''16\glissando  fis''16 gis''8 r2 
      | r2 d'''16 dis'''8. \tuplet 3/2 {d'''8 cis'''8 c'''8} 
      | ais''16 ais''8 g''16 \tuplet 3/2 {gis''8 g''8 fis''8~} \tuplet 7/8 {fis''16. f''32 e''32 dis''32 d''32~} d''32 c''16 b'16 ais'16 a'32~ 
      | a'16 gis'16 g'16 fis'16 e'4 dis'4. b'8 
      | d''8\glissando  dis''16\glissando  e''16~ e''4 dis''4 c''8 fis'8~ 
      | fis'4 r2 c''4 
      | c''4. dis''8\glissando  f''4 r4 
      | r2. r8 g'8 
      | c''4 d''16\glissando  dis''8.~ dis''8\glissando  e''4 dis''8~ 
      | dis''8 gis'4 gis'16 a'16~ a'8 gis'8 fis'8 e'8 
      | dis'4. r8 r2 
      | r1 
      | r8 dis''8 dis''8 dis''8 dis''8 dis''8 dis''8 dis''8 
      | e''16\glissando  dis''8\glissando  e''16~ e''8 dis''4 c''8 a'8 gis'8 
      | fis'4 e'4. dis'4. 
      | r1 
      | fis'16 g'4. fis'16~ fis'2~ 
      | fis'16 dis'16 e'8 \tuplet 7/8 {d'32 dis'32~ dis'8 gis32~} gis4. g8 
      | c'4 r2. 
      | r1 
      | r16 cis'16 dis'16 f'16 fis'16 gis'16 a'16 b'16 cis''16 dis''16 e''16 f''16 fis''4 
      | e''4 dis''4 c''4 gis'4~ 
      | gis'8 r8 r2. 
      | r1 
      | dis''16 f''8. g''16 ais''8. a''16 gis''16 f''8 dis''16 f''8 dis''16 
      | r4 c''16 cis''16 dis''8 \tuplet 3/2 {f''8 gis''4} e''4 
      | dis''16 f''8. g''16 ais''8. \tuplet 6/4 {a''16 gis''16 f''4} dis''16 f''8 dis''16 
      | r4 c''16 cis''16 dis''8 \tuplet 3/2 {f''8 gis''4} e''4 
      | fis''4 \tuplet 3/2 {g''8 ais''8 gis''8} g''4 dis''16 f''8. 
      | g''16 ais''8. a''16 gis''16 f''8 dis''16 f''8 dis''16 r4 
      | c''16 cis''16 dis''8 f''16 gis''8. e''4 fis''4 
      | g''16 ais''8 gis''16 g''4 fis''16 e''8 dis''16 r4 
      | dis''16 e''16 f''16 fis''16 \tuplet 3/2 {f''4 e''8} dis''16 c''16 b'8 g''16 ais''8. 
      | \tuplet 6/4 {a''16 gis''16 f''4} dis''16 f''8 dis''16 r4 c''16 cis''16 dis''8 
      | \tuplet 3/2 {f''8 gis''4} fis''4 g''16 ais''8 gis''16 g''4 
      | \tuplet 3/2 {fis''8 e''8 dis''8} r4 dis''16 e''16 f''16 fis''16 e''16 f''8 e''16 
      | dis''16 c''16 b'8 r4 \tuplet 3/2 {dis''8 e''4} f''16 fis''8. 
      | g''16 gis''8. gis''4 g''16 gis''8 g''16~ g''16 fis''16 f''16 e''16 
      | dis''4 \tuplet 3/2 {e''8 dis''8\glissando  e''8~} e''8 dis''4 d''16 c''16 
      | \tuplet 3/2 {f'8\glissando  fis'4} dis'4 r2 
      | r4 r32 dis'''32\bendAfter #+4  e'''16 dis'''16. fis'''32~ fis'''4~ fis'''16 d'''16 dis'''8~ 
      | dis'''8 d'''8~ \tuplet 3/2 {d'''8 c'''8 ais''8} gis''16 g''16 gis''8 r4 
      | r4 r8 a''4 gis''8 g''8 fis''8 
      | f''16 e''16 dis''8~ \tuplet 6/4 {dis''8. c''8\glissando  b'16~} b'8 fis'8 e'4 
      | dis'4. c''8 dis''16\glissando  d''8 dis''16~ dis''8 r8 
      | r2. dis''8 e''8 
      | dis''8 c''8 f'16\glissando  fis'16 e'8 dis'2~ 
      | dis'8 dis'16 e'16~ e'4 r2\bar  ".."
    }
    >>
>>    
}
