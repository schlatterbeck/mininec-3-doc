The New MININEC (Version 3): A Mini-Numerical Electromagnetic Code
==================================================================

Re-typeset version of [1]_. 
The reason for preparing this version is that the available original
report is very badly reproduced from microfiche.

Get the `PDF version`_ of the technical report, unfortunately github
doesn't recognize it as a valid PDF, so you need to click on "Download
raw file".

Some of the text in this version was derived from the earlier Mininec
technical report [2]_, which is identical with the newer version in some
passages.

Finally: Paul McMahon VK3DIP sent me a scanned version (from some paper
document he had access to) of the completely unreadable pages in the
document. Without him this project would not have been possible.

The following changes to the original report were adopted in this
version:

- Where capital letters were used for accentuation I've generally used
  LaTeX's builtin mechanisms (e.g. when typesetting section title) using
  larger fonts and/or bold typeface.
- All literature-references were typeset as e.g., "[1]" not as in the
  original as "(reference 1)". An exception to this (where we still use
  the word "reference") is when the reference is used in the sentence.
- Gain in dB over isotropic radiator is denoted as dBi (not, as in the
  original report with a capital I in dBI)
- In Section 4.1 "Getting Started" when describing the menu options (in
  the original on p. 72) I've corrected a typo, where it the original we
  have "change source of excitation (E)" the key was corrected to "(X)".
- Since the literature references are formatted using BiBTeX, we're
  using BiBTeX conventions for the entries and this sometimes changes
  the order of information in an entry. I've also left out some of the
  "Inc" or "Book Company" additions from the publisher information.
- In the explanations after formula (2) the integration variable in the
  integral from -pi to pi in the formula for k(s-s') and in the sin in
  the formula for r are probably a *lowercase* phi not an uppercase phi.
  This also applies to formulas (13), (14), (15), (16), (19) and (23).
- In the text after formula (3) when explaining the reduced kernel, the
  r in the explanation for k_0 should not be a vector. The formula is
  also missing parentheses and has bogus (s) terms (at least r(s) is not
  used anywhere else) this might have been a correction where the r
  vectors should have been replaced with s (and s'). I've replaced the r
  vectors in the formula with s and s'. Compare to equation (24).
- In formula (17) a_0 should not have a factor of m.
- In the explanation to equation (35) (p. 16 in the original) the
  variables theta with indeces x, y, and z were using an uppercase 'O'
  instead of the greek theta.
- I've exchanged figures 38 and 39: They were clearly mixed up in the
  original report, one being the E-field, one being the H-field of a
  quarterwave monopole, the figure captions didn't match the actual
  graphics.
- Figure 31: I've corrected the formula which reads in the original:
  k_0 = (h + l) = pi/2
  This is corrected to
  k_0 * (h + l) = pi/2
  Because for this antenna k_0=2*pi (called beta in the cited Prasad paper)
  And (h + l) = 0.25 for all these antennas.
  (Contrary to most of the paper the first '=' is quite readable in the
  formula so we have to asume a typo), note that the first mininec
  report [2]_ has a similar table on page 27 as Figure 9 which has the
  formula correct.
  Also note that in this table the values for mininec are none of the ones
  given in Figure 28, at least for k0h=0.5 the mininec model has 8
  segments for the vertical part and 17 segments each for the horizontal
  components, this is the version of the T-antenna that comes with
  mininec since the very first version [2]_.
- I've not spent the effort of transcribing the program listings.


.. [1] J. C. Logan and J. W. Rockway. The new MININEC (version 3): A
    mini-numerical electromagnetic code. Technical Report NOSC TD 938,
    Naval Ocean Systems Center (NOSC), San Diego, California, September
    1986. Available as ADA181682_
.. [2] Alfredo J. Julian, James C. Logan, and John W. Rockway. Mininec: A
    mini-numerical electromagnetics code. Technical Report NOSC TD 516,
    Naval Ocean Systems Center (NOSC), San Diego, California, September
    1982. Available as ADA121535_

.. _ADA181682: https://apps.dtic.mil/sti/pdfs/ADA181682.pdf
.. _ADA121535: https://apps.dtic.mil/sti/pdfs/ADA121535.pdf
.. _`PDF version`:
    https://github.com/schlatterbeck/mininec-3-doc/blob/master/mininec3.pdf
