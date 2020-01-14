" Vim syntax file
" Language: B
" Maintainer: Oleksandr Denysenko
"
" https://www.thinkage.ca/gcos/expl/b/manu/manu.html

if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn keyword bKeywords auto extrn
syn keyword bKeywords if else for while repeat switch do
syn keyword bKeywords return break goto next
syn keyword bKeywords case default

syn match bBraces "[{}\[\]]"
syn match bParens "[()]"

syn match bNumber "\v<\d+>"
syn match bNumber "\v<\d+\.\d+>"
syn match bNumber "\v<\d*\.?\d+([Ee]-?)?\d+>"

syn keyword bCommentTodo TODO FIXME XXX TBD OPTIMIZE HACK REVIEW contained
syn match   bCommentSkip "^[ \t]*\*\($\|[ \t]\+\)"
syn region  bComment start="/\*"  end="\*/" contains=@Spell,bCommentTodo

hi def link bKeywords Statement
hi def link bBraces Function
hi def link bParens Operator
hi def link bNumber Number
hi def link bComment Comment

let b:current_syntax = "b"

let &cpo = s:cpo_save
unlet s:cpo_save
