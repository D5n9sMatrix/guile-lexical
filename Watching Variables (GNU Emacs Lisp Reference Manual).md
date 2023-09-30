<!DOCTYPE html>
<html><!-- Created by GNU Texinfo 7.0.3, https://www.gnu.org/software/texinfo/ --><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>Watching Variables (GNU Emacs Lisp Reference Manual)</title>

<meta name="description" content="Watching Variables (GNU Emacs Lisp Reference Manual)">
<meta name="keywords" content="Watching Variables (GNU Emacs Lisp Reference Manual)">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="makeinfo">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link rev="made" href="mailto:bug-gnu-emacs@gnu.org">
<link rel="icon" type="image/png" href="https://www.gnu.org/graphics/gnu-head-mini.png">
<meta name="ICBM" content="42.256233,-71.006581">
<meta name="DC.title" content="gnu.org">
<style type="text/css">
@import url('/software/emacs/manual.css');
</style>
</head>

<body lang="en">
<div class="section-level-extent" id="Watching-Variables">
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Variable-Scoping.html" accesskey="n" rel="next">Scoping Rules for Variable Bindings</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Setting-Variables.html" accesskey="p" rel="prev">Setting Variable Values</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Variables.html" accesskey="u" rel="up">Variables</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>
<hr>
<h3 class="section" id="Running-a-function-when-a-variable-is-changed_002e">12.9 Running a function when a variable is changed.</h3>
<a class="index-entry-id" id="index-variable-watchpoints"></a>
<a class="index-entry-id" id="index-watchpoints-for-Lisp-variables"></a>

<p>It is sometimes useful to take some action when a variable changes its
value.  The <em class="dfn">variable watchpoint</em> facility provides the means to
do so.  Some possible uses for this feature include keeping display in
sync with variable settings, and invoking the debugger to track down
unexpected changes to variables (see <a class="pxref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Variable-Debugging.html">Entering the debugger when a variable is modified</a>).
</p>
<p>The following functions may be used to manipulate and query the watch
functions for a variable.
</p>
<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-add_002dvariable_002dwatcher"><span class="category-def">Function: </span><span><strong class="def-name">add-variable-watcher</strong> <var class="def-var-arguments">symbol watch-function</var><a class="copiable-link" href="#index-add_002dvariable_002dwatcher"> ¶</a></span></dt>
<dd><p>This function arranges for <var class="var">watch-function</var> to be called whenever
<var class="var">symbol</var> is modified.  Modifications through aliases
(see <a class="pxref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Variable-Aliases.html">Variable Aliases</a>) will have the same effect.
</p>
<p><var class="var">watch-function</var> will be called, just before changing the value of
<var class="var">symbol</var>, with 4 arguments: <var class="var">symbol</var>, <var class="var">newval</var>,
<var class="var">operation</var>, and <var class="var">where</var>.
<var class="var">symbol</var> is the variable being changed.  <var class="var">newval</var> is the value
it will be changed to.  (The old value is available to
<var class="var">watch-function</var> as the value of <var class="var">symbol</var>, since it was not
yet changed to <var class="var">newval</var>.)  <var class="var">operation</var> is a symbol
representing the kind of change, one of: <code class="code">set</code>, <code class="code">let</code>,
<code class="code">unlet</code>, <code class="code">makunbound</code>, or <code class="code">defvaralias</code>.  <var class="var">where</var>
is a buffer if the buffer-local value of the variable is being
changed, <code class="code">nil</code> otherwise.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-remove_002dvariable_002dwatcher"><span class="category-def">Function: </span><span><strong class="def-name">remove-variable-watcher</strong> <var class="def-var-arguments">symbol watch-function</var><a class="copiable-link" href="#index-remove_002dvariable_002dwatcher"> ¶</a></span></dt>
<dd><p>This function removes <var class="var">watch-function</var> from <var class="var">symbol</var>’s list of
watchers.
</p></dd></dl>

<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-get_002dvariable_002dwatchers"><span class="category-def">Function: </span><span><strong class="def-name">get-variable-watchers</strong> <var class="def-var-arguments">symbol</var><a class="copiable-link" href="#index-get_002dvariable_002dwatchers"> ¶</a></span></dt>
<dd><p>This function returns the list of <var class="var">symbol</var>’s active watcher
functions.
</p></dd></dl>

<ul class="mini-toc">
<li><a href="#Limitations" accesskey="1">Limitations</a></li>
</ul>
<div class="subsection-level-extent" id="Limitations">
<h4 class="subsection">12.9.1 Limitations</h4>

<p>There are a couple of ways in which a variable could be modified (or at
least appear to be modified) without triggering a watchpoint.
</p>
<p>Since watchpoints are attached to symbols, modification to the
objects contained within variables (e.g., by a list modification
function see <a class="pxref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Modifying-Lists.html">Modifying Existing List Structure</a>) is not caught by this mechanism.
</p>
<p>Additionally, C code can modify the value of variables directly,
bypassing the watchpoint mechanism.
</p>
<p>A minor limitation of this feature, again because it targets symbols,
is that only variables of dynamic scope may be watched.  This poses
little difficulty, since modifications to lexical variables can be
discovered easily by inspecting the code within the scope of the
variable (unlike dynamic variables, which can be modified by any code
at all, see <a class="pxref" href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Variable-Scoping.html">Scoping Rules for Variable Bindings</a>).
</p>

</div>
</div>
<hr>
<div class="nav-panel">
<p>
Next: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Variable-Scoping.html">Scoping Rules for Variable Bindings</a>, Previous: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Setting-Variables.html">Setting Variable Values</a>, Up: <a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Variables.html">Variables</a> &nbsp; [<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/index.html#SEC_Contents" title="Table of contents" rel="contents">Contents</a>][<a href="https://www.gnu.org/software/emacs/manual/html_node/elisp/Index.html" title="Index" rel="index">Index</a>]</p>
</div>





</body></html>