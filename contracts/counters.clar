(define-map Counters principal uint)

(define-read-only (get-count (who principal))
  (default-to u0 (map-get? Counters who))
)

(define-public (count-up)
  (ok (map-set Counters tx-sender (+ (get-count tx-sender) u1)))
)

