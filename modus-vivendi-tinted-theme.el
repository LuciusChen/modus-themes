;;; modus-vivendi-tinted-theme.el --- Elegant, highly legible theme with a night sky background -*- lexical-binding:t -*-

;; Copyright (C) 2019-2024  Free Software Foundation, Inc.

;; Author: Protesilaos Stavrou <info@protesilaos.com>
;; Maintainer: Modus-Themes Development <~protesilaos/modus-themes@lists.sr.ht>
;; URL: https://git.sr.ht/~protesilaos/modus-themes
;; Mailing-List: https://lists.sr.ht/~protesilaos/modus-themes
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
;; The Modus themes conform with the highest standard for
;; color-contrast accessibility between background and foreground
;; values (WCAG AAA).  Please refer to the official Info manual for
;; further documentation (distributed with the themes, or available
;; at: <https://protesilaos.com/emacs/modus-themes>).

;;; Code:



(eval-and-compile
  (unless (and (fboundp 'require-theme)
               load-file-name
               (equal (file-name-directory load-file-name)
                      (expand-file-name "themes/" data-directory))
               (require-theme 'modus-themes t))
    (require 'modus-themes))

;;;###theme-autoload
  (deftheme modus-vivendi-tinted
    "Elegant, highly legible theme with a night sky background.
Conforms with the highest legibility standard for color contrast
between background and foreground in any given piece of text,
which corresponds to a minimum contrast in relative luminance of
7:1 (WCAG AAA standard)."
    :background-mode 'dark
    :kind 'color-scheme
    :family 'modus)

  (defconst modus-vivendi-tinted-palette
    '(
;;; Basic values

      (bg-main          "#18191B")
      (bg-dim           "#26282e")
      (fg-main          "#eeeeee")
      (fg-dim           "#989898")
      (fg-alt           "#c6daff")
      (bg-info          "#417851")
      (bg-err           "#d44242")
      (bg-active        "#1d282a")
      (bg-inactive         bg-dim)
      (border           "#376751")

;;; Common accent foregrounds

      (red               "#ef4444")
      (red-warmer        "#f87171")
      (red-cooler        "#fca5a5")
      (red-faint         "#dc2626")
      (red-intense       "#b91c1c")
      (green             "#84cc16")
      (green-warmer      "#a3e635")
      (green-cooler      "#bef264")
      (green-faint       "#65a30d")
      (green-intense     "#4d7c0f")
      (yellow            "#f5be29")
      (yellow-warmer     "#fbbf24")
      (yellow-cooler     "#fcd34d")
      (yellow-faint      "#d97706")
      (yellow-intense    "#d98f52")
      (blue              "#3b82f6")
      (blue-warmer       "#60a5fa")
      (blue-cooler       "#93c5fd")
      (blue-faint        "#2563eb")
      (blue-intense      "#1d4ed8")
      (magenta           "#ec4899")
      (magenta-warmer    "#f472b6")
      (magenta-cooler    "#f9a8d4")
      (magenta-faint     "#db2777")
      (magenta-intense   "#be185d")
      (cyan              "#06b6d4")
      (cyan-warmer       "#22d3ee")
      (cyan-cooler       "#67e8f9")
      (cyan-faint        "#0891b2")
      (cyan-intense      "#0e7490")
      (purple            "#a855f7")
      (purple-warmer     "#c084fc")
      (purple-cooler     "#d8b4fe")
      (purple-faint      "#9333ea")
      (purple-intense    "#7e22ce")

;;; Uncommon accent foregrounds

      (rust       "#db7b5f")
      (gold       "#c0965b")
      (olive      "#9cbd6f")
      (slate      "#76afbf")
      (indigo     "#9099d9")
      (maroon     "#cf7fa7")
      (pink       "#d09dc0")

;;; Common accent backgrounds

      (bg-red-intense     "#9d1f1f")
      (bg-green-intense   "#2f822f")
      (bg-yellow-intense  "#7a6100")
      (bg-blue-intense    "#1640b0")
      (bg-magenta-intense "#7030af")
      (bg-cyan-intense    "#2266ae")

      (bg-red-subtle      "#620f2a")
      (bg-green-subtle    "#00422a")
      (bg-yellow-subtle   "#4a4000")
      (bg-blue-subtle     "#242679")
      (bg-magenta-subtle  "#552f5f")
      (bg-cyan-subtle     "#004065")

      (bg-red-nuanced     "#2f0a14")
      (bg-green-nuanced   "#04230c")
      (bg-yellow-nuanced  "#2b190a")
      (bg-blue-nuanced    "#0f0e39")
      (bg-magenta-nuanced "#260733")
      (bg-cyan-nuanced    "#02202c")

;;; Graphs

      (bg-graph-red-0     "#FF5456")
      (bg-graph-red-1     "#FFAFAF")
      (bg-graph-green-0   "#0fed00")
      (bg-graph-green-1   "#97FF97")
      (bg-graph-yellow-0  "#f1e00a")
      (bg-graph-yellow-1  "#FCFF54")
      (bg-graph-blue-0    "#2fafef")
      (bg-graph-blue-1    "#1f2f8f")
      (bg-graph-magenta-0 "#bf94fe")
      (bg-graph-magenta-1 "#5f509f")
      (bg-graph-cyan-0    "#47dfea")
      (bg-graph-cyan-1    "#00808f")

;;; Uncommon accent background and foreground pairs

      (bg-clay     "#49191a")
      (fg-clay     "#f1b090")

      (bg-ochre    "#462f20")
      (fg-ochre    "#e0d09c")

      (bg-lavender "#38325c")
      (fg-lavender "#dfc0f0")

      (bg-sage     "#2f4144")
      (fg-sage     "#97FF97")

;;; Special purpose

      (bg-completion       "#3b5674")
      (bg-hover            bg-main)
      (bg-hover-secondary  "#aa759f")
      (bg-hl-line          bg-completion)
      (bg-region           "#557dae")
      (fg-region           fg-main)
      (fg-comment          "#868087")

      (bg-char-0 "#0050af")
      (bg-char-1 "#7f1f7f")
      (bg-char-2 "#625a00")

      (bg-mode-line-active        bg-main)
      (fg-mode-line-active        fg-main)
      (border-mode-line-active    "#979797")
      (bg-mode-line-inactive      "#344138")
      (fg-mode-line-inactive      "#969696")
      (border-mode-line-inactive  "#606270")

      (modeline-err     "#ffa9bf")
      (modeline-warning "#dfcf43")
      (modeline-info    "#9fefff")

      (bg-tab-bar         bg-main)
      (bg-tab-current     bg-main)
      (bg-tab-other       bg-main)

;;; Diffs

      (bg-added           "#003a2f")
      (bg-added-faint     "#002922")
      (bg-added-refine    "#035542")
      (bg-added-fringe    "#23884f")
      (fg-added           "#a0e0a0")
      (fg-added-intense   "#80e080")

      (bg-changed         "#363300")
      (bg-changed-faint   "#2a1f00")
      (bg-changed-refine  "#4a4a00")
      (bg-changed-fringe  "#8f7a30")
      (fg-changed         "#efef80")
      (fg-changed-intense "#c0b05f")

      (bg-removed         "#4f1127")
      (bg-removed-faint   "#380a19")
      (bg-removed-refine  "#781a3a")
      (bg-removed-fringe  "#b81a26")
      (fg-removed         "#ffbfbf")
      (fg-removed-intense "#ff9095")

      (bg-diff-context    "#1a1f30")

;;; Paren match

      (bg-paren-match        "#5f789f")
      (fg-paren-match        fg-main)
      (bg-paren-expression   "#453040")
      (underline-paren-match unspecified)

;;; Mappings

;;;; General mappings

      (fringe bg-dim)
      (cursor maroon)

      (keybind magenta-cooler)
      (name magenta)
      (identifier yellow-faint)

      (err "#fbe5fd")
      (warning yellow-warmer)
      (info "#c4fdee")

      (underline-err red-intense)
      (underline-warning yellow)
      (underline-note cyan)

      (bg-prominent-err bg-red-intense)
      (fg-prominent-err fg-main)
      (bg-prominent-warning bg-yellow-intense)
      (fg-prominent-warning fg-main)
      (bg-prominent-note bg-cyan-intense)
      (fg-prominent-note fg-main)

      (bg-active-argument bg-yellow-nuanced)
      (fg-active-argument yellow-cooler)
      (bg-active-value bg-cyan-nuanced)
      (fg-active-value cyan-cooler)

;;;; Code mappings

      (bracket      fg-main)
      (builtin      "#f07d7c")
      (comment      fg-comment)
      (constant     "#74ade9")
      (delimiter    fg-main)
      (docstring    "#0e7490")
      (docmarkup    "#A0C980")
      (fnname       "#74ade9")
      (keyword      "#f472b6")
      (number       fg-main)
      (operator     fg-main)
      (preprocessor "#B35F5F")
      (punctuation  fg-main)
      (rx-backslash "#B57F96")
      (rx-construct "#6FC099")
      (string       "#A58BBF")
      (type         "#dfc184")
      (variable     "#6FC099")

;;;; Accent mappings

      (accent-0 blue-cooler)
      (accent-1 magenta-warmer)
      (accent-2 cyan-cooler)
      (accent-3 yellow)

;;;; Button mappings

      (fg-button-active fg-main)
      (fg-button-inactive fg-dim)
      (bg-button-active bg-active)
      (bg-button-inactive bg-dim)

;;;; Completion mappings

      (fg-completion-match-0 blue-cooler)
      (fg-completion-match-1 magenta-warmer)
      (fg-completion-match-2 cyan-cooler)
      (fg-completion-match-3 yellow)
      (bg-completion-match-0 unspecified)
      (bg-completion-match-1 unspecified)
      (bg-completion-match-2 unspecified)
      (bg-completion-match-3 unspecified)

;;;; Date mappings

      (date-common cyan)
      (date-deadline red)
      (date-event fg-alt)
      (date-holiday red-cooler)
      (date-holiday-other blue)
      (date-now fg-main)
      (date-range fg-alt)
      (date-scheduled yellow-warmer)
      (date-weekday cyan)
      (date-weekend red-faint)

;;;; Line number mappings

      (fg-line-number-inactive fg-dim)
      (fg-line-number-active fg-main)
      (bg-line-number-inactive bg-main)
      (bg-line-number-active bg-dim)

;;;; Link mappings

      (fg-link blue-warmer)
      (bg-link unspecified)
      (underline-link blue-warmer)

      (fg-link-symbolic cyan)
      (bg-link-symbolic unspecified)
      (underline-link-symbolic cyan)

      (fg-link-visited magenta)
      (bg-link-visited unspecified)
      (underline-link-visited magenta)

;;;; Mail mappings

      (mail-cite-0 blue-warmer)
      (mail-cite-1 yellow-cooler)
      (mail-cite-2 cyan-cooler)
      (mail-cite-3 red-cooler)
      (mail-part blue)
      (mail-recipient magenta-cooler)
      (mail-subject magenta-warmer)
      (mail-other magenta-faint)

;;;; Mark mappings

      (bg-mark-delete bg-red-subtle)
      (fg-mark-delete red-cooler)
      (bg-mark-select bg-cyan-subtle)
      (fg-mark-select cyan)
      (bg-mark-other bg-yellow-subtle)
      (fg-mark-other yellow)

;;;; Prompt mappings

      (fg-prompt fg-main)
      (bg-prompt unspecified)

;;;; Prose mappings

      (bg-prose-block-delimiter bg-inactive)
      (fg-prose-block-delimiter fg-dim)
      (bg-prose-block-contents bg-inactive)

      (bg-prose-code unspecified)
      (fg-prose-code cyan-cooler)

      (bg-prose-macro unspecified)
      (fg-prose-macro magenta-cooler)

      (bg-prose-verbatim unspecified)
      (fg-prose-verbatim magenta-warmer)

      (prose-done green-intense)
      (prose-todo red)

      (prose-metadata fg-dim)
      (prose-metadata-value fg-alt)

      (prose-table fg-alt)
      (prose-table-formula magenta-warmer)

      (prose-tag magenta-faint)

;;;; Rainbow mappings

      (rainbow-0 fg-main)
      (rainbow-1 magenta-intense)
      (rainbow-2 cyan-intense)
      (rainbow-3 red-warmer)
      (rainbow-4 yellow-intense)
      (rainbow-5 magenta-cooler)
      (rainbow-6 green-intense)
      (rainbow-7 blue-warmer)
      (rainbow-8 magenta-warmer)

;;;; Search mappings

      (bg-search-current bg-yellow-intense)
      (bg-search-lazy bg-cyan-intense)
      (bg-search-replace bg-red-intense)

      (bg-search-rx-group-0 bg-blue-intense)
      (bg-search-rx-group-1 bg-green-intense)
      (bg-search-rx-group-2 bg-red-subtle)
      (bg-search-rx-group-3 bg-magenta-subtle)

;;;; Space mappings

      (bg-space unspecified)
      (fg-space border)
      (bg-space-err bg-red-intense)

;;;; Terminal mappings

      (bg-term-black           "#000000")
      (fg-term-black           "#000000")
      (bg-term-black-bright    "#595959")
      (fg-term-black-bright    "#595959")

      (bg-term-red             red)
      (fg-term-red             red)
      (bg-term-red-bright      red-warmer)
      (fg-term-red-bright      red-warmer)

      (bg-term-green           green)
      (fg-term-green           green)
      (bg-term-green-bright    green-cooler)
      (fg-term-green-bright    green-cooler)

      (bg-term-yellow          yellow)
      (fg-term-yellow          yellow)
      (bg-term-yellow-bright   yellow-warmer)
      (fg-term-yellow-bright   yellow-warmer)

      (bg-term-blue            blue)
      (fg-term-blue            blue)
      (bg-term-blue-bright     blue-warmer)
      (fg-term-blue-bright     blue-warmer)

      (bg-term-magenta         magenta)
      (fg-term-magenta         magenta)
      (bg-term-magenta-bright  magenta-cooler)
      (fg-term-magenta-bright  magenta-cooler)

      (bg-term-cyan            cyan)
      (fg-term-cyan            cyan)
      (bg-term-cyan-bright     cyan-cooler)
      (fg-term-cyan-bright     cyan-cooler)

      (bg-term-white           "#a6a6a6")
      (fg-term-white           "#a6a6a6")
      (bg-term-white-bright    "#ffffff")
      (fg-term-white-bright    "#ffffff")

;;;; Heading mappings

      (fg-heading-0 purple-cooler)
      (fg-heading-1 green-cooler)
      (fg-heading-2 red-cooler)
      (fg-heading-3 blue-cooler)
      (fg-heading-4 yellow-cooler)
      (fg-heading-5 green-cooler)
      (fg-heading-6 red-cooler)
      (fg-heading-7 blue-cooler)
      (fg-heading-8 yellow-cooler)

      (bg-heading-0 unspecified)
      (bg-heading-1 unspecified)
      (bg-heading-2 unspecified)
      (bg-heading-3 unspecified)
      (bg-heading-4 unspecified)
      (bg-heading-5 unspecified)
      (bg-heading-6 unspecified)
      (bg-heading-7 unspecified)
      (bg-heading-8 unspecified)

      (overline-heading-0 unspecified)
      (overline-heading-1 unspecified)
      (overline-heading-2 unspecified)
      (overline-heading-3 unspecified)
      (overline-heading-4 unspecified)
      (overline-heading-5 unspecified)
      (overline-heading-6 unspecified)
      (overline-heading-7 unspecified)
      (overline-heading-8 unspecified))
    "The entire palette of the `modus-vivendi-tinted' theme.

Named colors have the form (COLOR-NAME HEX-VALUE) with the former
as a symbol and the latter as a string.

Semantic color mappings have the form (MAPPING-NAME COLOR-NAME)
with both as symbols.  The latter is a named color that already
exists in the palette and is associated with a HEX-VALUE.")

  (defcustom modus-vivendi-tinted-palette-overrides nil
    "Overrides for `modus-vivendi-tinted-palette'.

Mirror the elements of the aforementioned palette, overriding
their value.

For overrides that are shared across all of the Modus themes,
refer to `modus-themes-common-palette-overrides'.

Theme-specific overrides take precedence over shared overrides.
The idea of common overrides is to change semantic color
mappings, such as to make the cursor red.  Wherea theme-specific
overrides can also be used to change the value of a named color,
such as what hexadecimal RGB value the red-warmer symbol
represents."
    :group 'modus-themes
    :package-version '(modus-themes . "4.0.0")
    :version "30.1"
    :type '(repeat (list symbol (choice symbol string)))
    :set #'modus-themes--set-option
    :initialize #'custom-initialize-default
    :link '(info-link "(modus-themes) Palette overrides"))

  (modus-themes-theme modus-vivendi-tinted
                      modus-vivendi-tinted-palette
                      modus-vivendi-tinted-palette-overrides)

  (provide-theme 'modus-vivendi-tinted))

;;; modus-vivendi-tinted-theme.el ends here
