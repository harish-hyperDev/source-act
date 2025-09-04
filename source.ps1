# set-alias source Source-Profile

$EXPORT_SOURCE = "F:\.venv"

function source {
    param($activate_env)
    $profile = $activate_env
    if ($profile -eq "-l" -or $profile -eq 0) {
        ls $EXPORT_SOURCE | select "Name"
    }
    else {
        $source_path = "$EXPORT_SOURCE\$profile\Scripts\Activate.ps1"
        . $source_path
        echo $source_path
    }
}

if (!$args[0]) {
    ls $EXPORT_SOURCE | select "Name"

} else {
    source $args[0]
}
