CKSuspend() {
    Suspend
    if (A_IsSuspended) {
        CKTooltip("Status: Suspended")
    } else {
        CKTooltip("Status: Unsuspended")
    }
}