$i_max = 8
$j_max = 60

for ($i = 1; $i -le $i_max; $i++) {
    $s = "he10($i) <="

    $c = 0;
    for ($j = 1; $j -le $j_max; $j++) {
        $b = [convert]::ToString($j, 2)
        if (($b.Length -ge $i) -and $b.substring($b.Length - $i, 1) -eq "1") {
            if ($c -gt 0) {
                $s += " or"
            }

            $s += " buttons($j)"

            $c++;

            if ($c -gt 0 -and $c % 4 -eq 0) {
                $s += [System.Environment]::NewLine
                if ($c % 4 -eq 0) {
                    $s += New-Object string 9
                    $s += New-Object string 9
                }
            }
        }
    }

    if ($c -eq 0) {
        $s += "'0'"
    }

    $s += ";" + [System.Environment]::NewLine

    echo $s
}