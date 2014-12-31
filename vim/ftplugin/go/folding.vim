" setlocal foldmethod=expr
setlocal foldexpr=GetGoFold(v:lnum)

function! GetGoFold(lnum)
        if getline(a:lnum) =~? '\v^\s*$'
                return '-1'
        endif

        let this_indent = IndentLevel(a:lnum)
        let next_indent = IndentLevel(NextNonBlankLine(a:lnum))

        if next_indent == this_indent
                return this_indent
        elseif next_indent < this_indent
                return this_indent
        elseif next_indent > this_indent
                return '>' . next_indent
        endif
        return '0'
endfunction

function! IndentLevel(lnum)
        let level = indent(a:lnum) / &shiftwidth
        if getline(a:lnum) =~? '\v^\s*[})]$'
                return level + 1
        else
                return level
        endif
endfunction

function! NextNonBlankLine(lnum)
        let numlines = line('$')
        let current = a:lnum + 1

        while current <= numlines
                if getline(current) =~? '\v\S'
                        return current
                endif

                let current += 1
        endwhile

        return -2
endfunction
