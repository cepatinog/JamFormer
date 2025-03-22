\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Bitches Brew"
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
      | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4 | c2:sus4 b2:sus4 | bes2:sus4 b2:sus4|
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

      \tempo 4 = 98
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default r4 r8 g'8 c''8.\bendAfter #-4  b'16~ b'8 ais'8~ 
      | ais'4 r2. 
      | r2. c''8 d''8 
      | ais'4. r8 r2 
      | r2 e''16 fis''4. g''16 
      | r2. c''16 dis''16 c''16 gis'16 
      | g'4 \tuplet 3/2 {f'8 dis'4} e'4 dis'4 
      | r1 
      | a''8\glissando  cis'''16 dis'''16~ dis'''4. r8 r4 
      | r4 d'''16\glissando  dis'''8. fis'''4 r4 
      | r4 \tuplet 6/4 {r4 r16 f'16} fis'16 ais'16 gis'16 b'16 c''16 cis''16 d''16 dis''16 
      | e''16 f''16 fis''16 d''16 cis''16 dis''8 b'16~ b'16 c''8 b'16~ b'16 a'16 ais'16 a'16 
      | gis'16 g'16 e'8 c'8 r8 r2 
      | r4 fis''16 f''16 fis''16 f''16 e''16 cis''16 b'16 a'16 fis'16 e'16 d'8 
      | dis'4 e'4. dis'4 r8 
      | r1 
      | dis''4\glissando  e''8 dis''4. e''4~ 
      | e''4 \tuplet 6/4 {ais'8 b'8. g'16} \tuplet 6/4 {gis'4~ gis'16 gis'16~} \tuplet 6/4 {gis'16\glissando  a'16 g'16 gis'8.} 
      | r1 
      | dis''16 d''16 dis''16 e''16 f''16 fis''16 f''16 e''16 dis''16. gis'16 b'32 a'32 ais'32 gis'16 g'8.\glissando  
      | gis'2 g'8 r8 r4 
      | r2. \tuplet 3/2 {c''8 c''4} 
      | \tuplet 3/2 {c''8 c''4} d''16 c''16 r8 r2 
      | r1 
      | e''4 \tuplet 3/2 {a''4 gis''8} r2 
      | gis''4 g''8 fis''8 r2 
      | r4 dis''8 ais''16 a''16 gis''8 r8 r4 
      | fis''8 f''8 b'8 gis'8 r2 
      | r8 g'16 gis'16 a'16 ais'16 b'16 c''16 cis''16 d''16 dis''16 e''16 b''8 gis''8 
      | \tuplet 9/8 {g''4 fis''32~} fis''8 b'8 r2 
      | f''4.^\markup{\left-align \small vib} dis''8 r4 c''8 r8 
      | r2. r8 g'8 
      | c''8\glissando  b'8 r4 ais'4 r4 
      | g'16 ais'16 gis'16 ais'16 b'16 cis''16 dis''16 e''16~ e''8 r8 r4 
      | dis''4. gis''4 r8 r4 
      | g''4 r2. 
      | g'16 c''16 d''16 dis''16 e''16 f''16 fis''8 fis''8. f''32 e''32 dis''8. c''16~ 
      | c''4 gis'4 e'4. dis'8~ 
      | dis'2 r2 
      | r1 
      | \tuplet 3/2 {c''8\glissando  b'8 c''8~} c''8 b'8 ais'2~ 
      | ais'16 a'8 gis'16~ gis'8 g'4 r8 r4 
      | r4 c''8 dis''4 fis''4. 
      | f''4 e''8 dis''4 r8 r4 
      | r2 r16 dis'''8 fis'''32 e'''32 d'''8 dis'''16 d'''16~ 
      | \tuplet 5/4 {d'''16 c'''16 ais''16 gis''16 g''16} gis''16 g''16 fis''4 e''16 dis''16~ \tuplet 3/2 {dis''8 c''8 b'8} 
      | \tuplet 3/2 {ais'8 a'8 gis'8} g'8 fis'8~ fis'2~ 
      | fis'8\bendAfter #-4  r8 r2. 
      | \tuplet 6/4 {e''4~ e''16 fis''16~} fis''8 dis''8~ dis''8.\glissando  d''16~ \tuplet 6/4 {d''4~ d''16\glissando  dis''16~} 
      | dis''4 e''8 cis''4. r4 
      | r4 e''8 fis''8 dis''2 
      | dis''4 e''8 cis''8 r2 
      | r8 e''8 fis''8 e''8 dis''4 c''8 b'8~ 
      | b'8 ais'16 a'32 gis'32~ gis'8 e'4.^\markup{\left-align \small vib} r4 
      | r4 r16. d'32 e'32 f'32 fis'32 g'32~ g'32 gis'16. ais'32 b'32 cis''32 dis''32~ \tuplet 6/4 {dis''8 f''16 g''16 gis''16 g''16~} 
      | g''16. fis''32 f''32 e''32 dis''32 d''32 \tuplet 6/4 {c''16 b'16 gis'16 a'16 gis'8} r2 
      | r8 g'8 c''8 cis''8 e''8 r8 r4 
      | \tuplet 3/2 {dis''8\glissando  d''8\glissando  dis''8} c''8 fis'8 r2 
      | r4 r8 g'8 c''8 e''8 fis''8 e''8 
      | dis''4 \tuplet 3/2 {c''4 fis'8~} fis'2\bar  ".."
    }
    >>
>>    
}
