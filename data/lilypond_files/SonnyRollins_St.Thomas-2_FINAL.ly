\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "St. Thomas (Solo 2)"
  composer = "Sonny Rollins"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
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

      | c1:9 | e2:min7 a2:7 | d2:min7 g2:7 | c1:9 | s1 | e2:min7 a2:7 | d2:min7 g2:7 | c1:9 
      | e1:min5-7 | a1:9+ | d1:min7 | g1:7 | c2:9 c2:7/e | f2 fis2:dim | c2:/g g2:7 | c1:9 
      | c1:9 | e2:min7 a2:7 | d2:min7 g2:7 | c1:9 | s1 | e2:min7 a2:7 | d2:min7 g2:7 | c1:9 
      | e1:min5-7 | a1:9+ | d1:min7 | g1:7 | c2:9 c2:7/e | f2 fis2:dim | c2:/g g2:7 | c1:9 
      | c1:9 | e2:min7 a2:7 | d2:min7 g2:7 | c1:9 | s1 | e2:min7 a2:7 | d2:min7 g2:7 | c1:9 
      | e1:min5-7 | a1:9+ | d1:min7 | g1:7 | c2:9 c2:7/e | f2 fis2:dim | c2:/g g2:7 | c1:9 
      | c1:9 | e2:min7 a2:7 | d2:min7 g2:7 | c1:9 | s1 | e2:min7 a2:7 | d2:min7 g2:7 | c1:9 
      | e1:min5-7 | a1:9+ | d1:min7 | g1:7 | c2:9 c2:7/e | f2 fis2:dim | c2:/g g2:7 | c1:9 
      | s1|
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

      \tempo 4 = 224
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default r8 g'8 b'8 c''8 b'8 a'8 g'8 f'8 
      | e'8 d'8 cis'8 e'8 g'8 ais'8 g'8 gis'8 
      | a'8 f'8 e'8 d'8 g'8 b8 \tuplet 3/2 {c'4 f'8} 
      | e'8 c'8 a8 fis8 \tuplet 3/2 {gis8 ais8 aes8} g8 f8 
      | e8 d'8 b8 r8 r2 
      | r4 r8 gis'8\glissando  a'8 b'16 bes'16 a'8 g'8~ 
      | \tuplet 3/2 {g'8 e'8\glissando  f'8~} f'8 r8 r2 
      | r2 r8. c'16~ c'8. g'16~ 
      \bar "||" g'8 c'4 c'8 \tuplet 3/2 {g'4 c'8~} c'4 
      | d'8 f'8 d'8 dis'8~ dis'16 e'8 d'16 \tuplet 3/2 {cis'4 a8} 
      | e'16 g'16 e'16 cis'16 d'8 e'8 \tuplet 3/2 {f'4 g'8} a'8 aes'8~ 
      | aes'8 g8 gis8 f'4.^\markup{\left-align \small vib} r4 
      | r1 
      | r4 b8\glissando  c'8~ c'2~ 
      | c'2~ c'8\bendAfter #+4  b8 c'4~ 
      | c'2. b4~ 
      \bar "||" \mark \default b8.\bendAfter #+4  c'16~ c'2. 
      | f'8\glissando  g'8~ g'4. fis'16 dis'16 c'4~ 
      | c'8 r8 r2. 
      | r4 r8. fis'16 \tuplet 3/2 {gis'8 c''8 b'8} \tuplet 3/2 {a'8 g'8 e'8} 
      | d'16 c'16 b16 gis16~ gis16 a8 f16 g8 f8~ f16 g16 a16 d'16 
      | b8 r8 r2. 
      | r8 cis'8 \tuplet 3/2 {d'8 a'8 c''8} \tuplet 3/2 {b'4 g'8} \tuplet 3/2 {a'4 b'8~} 
      | b'8 a'8 g'8 e'8 b8 c'8 e'8 g'8 
      \bar "||" bes'4 e'8 r8 r2 
      | dis'8 gis'8 d'8 c'8 cis'8 e'8 \tuplet 3/2 {g'4 bes'8} 
      | a'8 d'8 dis'16 e'8 g'16 \tuplet 3/2 {f'4 g8~} \tuplet 3/2 {g8 a8 c'8} 
      | e'8 d'8 a8 c'8 b8 d'8 f'8 a'8 
      | g'8 b8 c'8 f'8 e'8 c'8~ c'16 bes8 gis16~ 
      | gis16 a8 c'16~ c'16 d'8 e'16 \tuplet 3/2 {g'4 f'8~} \tuplet 3/2 {f'8 e'8 d'8} 
      | c'8 a8 g8 f8 e8 g8 a8 b8 
      | \tuplet 3/2 {d'4 b8} d'8 es'8 b8 aes8~ aes16 g8 f16 
      \bar "||" \mark \default e4 ais16 d'8 b16 c'8 g8 \tuplet 3/2 {f'4 dis'8} 
      | e'8. g16 cis'8 e'8~ e'8. d'16\bendAfter #+4  dis'16 des'8.\glissando  
      | r2. r8 c'8 
      | f'8 g'8 fis'8. dis'16 c'8 dis'8 \tuplet 3/2 {fis'4 g'8} 
      | fis'8 dis'8 c'8 dis'8 fis'8 g'8 f'8 dis'8 
      | c'8 dis'8~ dis'16 f'8 ges'16~ ges'16 f'8 dis'16 r4 
      | r1 
      | r4 r8 b'16\glissando  c''16~ c''8 b'4 ais'8~ 
      \bar "||" ais'8 d''16 e''16~ e''2. 
      | es''8. d''16~ d''4 cis''8. a'16~ a'8 r8 
      | r4 r8 d''4 des''4 cis'8 
      | d'16 dis'16 f'16 gis'16 c''8. a'16 b'8 a'8 g'8 f'8 
      | e'8 g'8 d'8 des'8 c'8 c''4 bes'8 
      | g'8\glissando  a'8 f'8\bendAfter #-4  es'8 r2 
      | r4 r8 g'8 b'8 c''8~ c''16 b'8 a'16~ 
      | a'16 g'8 a'16~ a'16 b'8 c''16~ \tuplet 3/2 {c''8 b'8 a'8~} a'16 g'8 a'16 
      \bar "||" \mark \default b'8 c''8 \tuplet 3/2 {b'4 a'8~} a'16 g'8 a'16 b'8 c''8 
      | b'8 a'8 \tuplet 3/2 {g'4 a'8} b'8 c''8~ c''16 b'8 a'16~ 
      | \tuplet 3/2 {a'8 g'8 a'8} b'8 c''8 b'8 a'8~ a'16 g'8 a'16 
      | b'8 c''8 b'8 a'8 g'8 a'8 b'8 c''8~ 
      | \tuplet 3/2 {c''8 b'8 a'8} g'8 a'8 b'8 c''8~ c''16 b'16 a'8 
      | g'8 f'8 e'8 d'8 cis'8 e'8 g'8 bes'8 
      | a'8 f'8 e'8 d'8 g'8 f'8 e'8 d'8 
      | \tuplet 3/2 {c'4 g8} a8 b8 c'8 d'8 e'8 f'8 
      \bar "||" \tuplet 3/2 {g'4 bes8~} bes4 r2 
      | r4 r8 gis'4\glissando  a'8 \tuplet 3/2 {g'4 e'8} 
      | f'4 g8\glissando  aes4. r4 
      | r4 r8 ais8 c'8 f'8 d'8 e'8 
      | \tuplet 3/2 {f'4 c'8} e'8\glissando  f'8\glissando  dis'8 c'8 f'4~^\markup{\left-align \small vib} 
      | f'4 e'8 c'8 f'8. c'16 e'8 f'8~^\markup{\left-align \small vib} 
      | f'4~ f'16 e'8 c'16 f'8 c'8 g8 f8 
      | ges8 a8 c'8 e'8 es'8 b8 aes8 fis8 
      \bar "||" \mark \default g4 c4.^\markup{\left-align \small vib} r8 r4\bar  ".."
    }
    >>
>>    
}
