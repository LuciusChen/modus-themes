;;; modus-operandi-theme.el --- Elegant, highly legible and customizable light theme -*- lexical-binding:t -*-

;; Copyright (C) 2019-2022  Free Software Foundation, Inc.

;; Author: Protesilaos Stavrou <info@protesilaos.com>
;; Maintainer: Modus-Themes Development <~protesilaos/modus-themes@lists.sr.ht>
;; URL: https://git.sr.ht/~protesilaos/modus-themes
;; Mailing-List: https://lists.sr.ht/~protesilaos/modus-themes
;; Version: 3.0.0
;; Package-Requires: ((emacs "27.1"))
;; Keywords: faces, theme, accessibility

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Modus Operandi is the light variant of the Modus themes (Modus
;; Vivendi is the dark one).  The themes are designed for color-contrast
;; accessibility.  More specifically:
;;
;;     1. Provide a consistent minimum contrast ratio between background
;;     and foreground values of 7:1 or higher.  This meets the highest
;;     such accessibility criterion per the guidelines of the Worldwide
;;     Web Consortium's Working Group on Accessibility (WCAG AAA
;;     standard).
;;
;;     2. Offer as close to full face coverage as possible.  The list is
;;     already quite long, with more additions to follow as part of the
;;     ongoing development process.
;;
;; For a complete view of the project, also refer to the following files
;; (should be distributed in the same repository/directory as the
;; current item):
;;
;; - modus-themes.el            (Main code shared between the themes)
;; - modus-vivendi-theme.el     (Dark theme)

;;; Code:



(eval-and-compile
  (unless (and (fboundp 'require-theme)
               load-file-name
               (equal (file-name-directory load-file-name)
                      (expand-file-name "themes/" data-directory))
               (require-theme 'modus-themes t))
    (require 'modus-themes))

  (deftheme modus-operandi
    "Elegant, highly legible and customizable light theme.
Conforms with the highest legibility standard for color contrast
between background and foreground in any given piece of text,
which corresponds to a minimum contrast in relative luminance of
7:1 (WCAG AAA standard).")

  (define-obsolete-variable-alias
    'modus-themes-operandi-colors
    'modus-operandi-palette
    "3.0.0")

  (defconst modus-operandi-palette
    '(
;;; Basic values
      (bg-main          "#ffffff")
      (bg-dim           "#f0f0f0")
      (fg-main          "#000000")
      (fg-dim           "#585858")
      (fg-alt           "#305f70")
      (bg-active        "#c4c4c4")
      (bg-inactive      "#e0e0e0")
      (bg-active-accent "#d0d6ff")
      (border           "#888888")

;;; Common accent foregrounds

      (red             "#a60000")
      (red-warmer      "#972500")
      (red-cooler      "#a0132f")
      (red-faint       "#7f2020")
      (red-intense     "#d00000")
      (green           "#006800")
      (green-warmer    "#316500")
      (green-cooler    "#00663f")
      (green-faint     "#104f30")
      (green-intense   "#008900")
      (yellow          "#6f5f00")
      (yellow-warmer   "#813e00")
      (yellow-cooler   "#6a4f2f")
      (yellow-faint    "#5f4400")
      (yellow-intense  "#808000")
      (blue            "#0031a9")
      (blue-warmer     "#2544bb")
      (blue-cooler     "#0000c0")
      (blue-faint      "#003497")
      (blue-intense    "#0000ff")
      (magenta         "#721045")
      (magenta-warmer  "#8f0075")
      (magenta-cooler  "#5317ac")
      (magenta-faint   "#752f50")
      (magenta-intense "#dd22dd")
      (cyan            "#00538b")
      (cyan-warmer     "#30517f")
      (cyan-cooler     "#005a5f")
      (cyan-faint      "#005077")
      (cyan-intense    "#008899")

;;; Common accent backgrounds

      (bg-red      "#ff8f88")
      (bg-green    "#8adf80")
      (bg-yellow   "#fac200")
      (bg-blue     "#cbcfff")
      (bg-magenta  "#df8fff")
      (bg-cyan     "#88c8ff")

      (bg-red-subtle      "#ffcfbf")
      (bg-green-subtle    "#b3fabf")
      (bg-yellow-subtle   "#fff576")
      (bg-blue-subtle     "#ccdfff")
      (bg-magenta-subtle  "#ffddff")
      (bg-cyan-subtle     "#bfefff")

;;; Graphs

      (red-graph-0-bg     "#ef7969")
      (red-graph-1-bg     "#ffaab4")
      (green-graph-0-bg   "#4faa09")
      (green-graph-1-bg   "#8fef00")
      (yellow-graph-0-bg  "#ffcf00")
      (yellow-graph-1-bg  "#f9ff00")
      (blue-graph-0-bg    "#7090ff")
      (blue-graph-1-bg    "#9fc6ff")
      (magenta-graph-0-bg "#e07fff")
      (magenta-graph-1-bg "#fad0ff")
      (cyan-graph-0-bg    "#70d3f0")
      (cyan-graph-1-bg    "#afefff")

;;; Special purpose

      (bg-completion           "#b0c0fc")
      (bg-hover                "#94d4ff")
      (bg-hover-alt            "#c0c3ef")
      (bg-hl-line              "#d0d6ec")
      (bg-paren-match          "#e0af82")
      (bg-paren-match-intense  "#c488ff")
      (bg-paren-expression     "#dff0ff")
      (bg-region               "#bcbcbc")
      (bg-region-accent        "#a0a0e9")
      (bg-region-accent-subtle "#efdfff")
      (bg-prompt               "#afe5df")

      (bg-char-0 "#7feaff")
      (bg-char-1 "#ffaaff")
      (bg-char-2 "#dff000")

;;; Diffs

      (bg-added          "#d5f8d5")
      (bg-added-faint    "#e5ffe5")
      (bg-added-refine   "#c6e8c6")
      (bg-added-intense  "#8cca8c")

      (bg-added-deuteran         "#dbdbff")
      (bg-added-faint-deuteran   "#e4e4ff")
      (bg-added-refine-deuteran  "#c0c0ef")
      (bg-added-intense-deuteran "#8fcfff")

      (bg-changed         "#ffdfa9")
      (bg-changed-faint   "#ffefbf")
      (bg-changed-refine  "#fac090")
      (bg-changed-intense "#dfd23a")

      (bg-removed         "#ffd8d5")
      (bg-removed-faint   "#ffe9e9")
      (bg-removed-refine  "#f3b5af")
      (bg-removed-intense "#d84a4f")

;;;; Mappings

      (builtin magenta-warmer)
      (comment fg-dim)
      (constant blue-cooler)
      (docstring green-faint)
      (fnname magenta)
      (keyword magenta-cooler)
      (preprocessor red-cooler)
      (string blue-warmer)
      (type cyan-cooler)
      (variable cyan)

      (date cyan)
      (keybind blue-cooler)
      (link blue-warmer)
      (link-alt magenta)
      (name magenta-warmer)
      (prompt cyan-cooler)

      (rx-construct green-cooler)
      (rx-backslash magenta)

      (search-current bg-yellow)
      (search-lazy bg-cyan)
      (search-match bg-magenta-subtle)

      (err red)
      (warning yellow)
      (success green)
      (note cyan)

      (underline-err red-intense)
      (underline-warning yellow-intense)
      (underline-note cyan-intense)

      (accent-0 blue-warmer)
      (accent-1 red)
      (accent-2 green-cooler)
      (accent-3 magenta-warmer)

      (mail-0 blue-warmer)
      (mail-1 magenta)
      (mail-2 green-warmer)
      (mail-3 yellow-warmer)
      (mail-4 cyan)
      (mail-recipient magenta-cooler) ; compare with name and keep them similar
      (mail-subject blue-cooler)
      (mail-other magenta-warmer)

      (heading-0 cyan-cooler)
      (heading-1 fg-main)
      (heading-2 fg-special-warm)
      (heading-3 fg-special-cold)
      (heading-4 fg-special-calm)
      (heading-5 fg-special-mild)
      (heading-6 yellow-faint)
      (heading-7 red-faint)
      (heading-8 magenta-faint)

      (heading-rainbow-0 blue-warmer)
      (heading-rainbow-1 magenta-cooler)
      (heading-rainbow-2 magenta)
      (heading-rainbow-3 magenta-warmer)
      (heading-rainbow-4 red-cooler)
      (heading-rainbow-5 red)
      (heading-rainbow-6 red-warmer)
      (heading-rainbow-7 yellow-warmer)
      (heading-rainbow-8 yellow)

      (rainbow-0 fg-main)
      (rainbow-1 magenta-cooler)
      (rainbow-2 cyan-intense)
      (rainbow-3 red-cooler)
      (rainbow-4 green-intense)
      (rainbow-5 magenta-intense)
      (rainbow-6 yellow-intense)
      (rainbow-7 blue-intense)
      (rainbow-8 magenta)

      (prose-code cyan)
      (prose-macro magenta-cooler)
      (prose-verbatim magenta-warmer))
    "The entire palette of the `modus-operandi' theme.
Each element has the form (NAME HEX) with the former as a
symbol and the latter as a string.")

  (modus-themes-theme modus-operandi modus-operandi-palette)

  (provide-theme 'modus-operandi))

;;;###theme-autoload
(put 'modus-operandi 'theme-properties '(:background-mode light :kind color-scheme :family modus))

;;; modus-operandi-theme.el ends here
