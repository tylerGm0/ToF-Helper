CKWait(what=0) {
    if (what>10) {
        Sleep,%what%
    } else {
        out:=70
        return %out%
    }
}