# Syntax of the language
## Verb + Noun

- **d** for delete
- **w** for word

combine to be "delete word"

**Commands are Repeatable & Undoable**
## Verbs in Vim
- d => delete
- c => change (delete and enter insert mode)
- '>' => indent
- v => visually select
- y => yank (copy)


## Nouns in Vim -- Motions
- w => word (forward by a "word")
- b => back (back by a "word")
- 2j => down 2 lines


## Nouns in Vim -- Text Objects
- iw => "inner word" (works from anywhere in a word)
- it => "inner tag" (the contents of an HTML tab)
- i" => "inner quotes" (extend to [] {} () etc)
- ip => "inner paragraph"
- as => "a sentence"

**dot (.) will redo the last command**

## Nouns in Vim -- Parameterized Text Objects
- f, F => "find" the next character (capitalized goes back)
- t, T => "find" the next character (capitalozed gpes back)
- / => Search (up to the next match)

<div class="user">
<p>Hello List</p>
<ul>
<li>One</li>
<li>Two</li>
<li>Three</li>
</ul>
</div>


alternative to esc => Ctrl-]

## Deleting files with nerdTree 
- m + a => create a new file/folder 
- m + d => delete a file
- m + m => rename 


[Tips for mastering the language](https://www.youtube.com/watch?v=wlR5gYd6um0)
