(define (domain shakey)
  (:requirements :strips)

  (:types
		room
		box
		door
    wide-door
		item)

  (:predicates
        (adjacent ?r1 ?r2 - room)
	      (at ?robot - robot ?room - room)
        ;(hold ?robot - robot ?small1 - item)
        ;(hold2 ?robot - robot ?small1 ?small2 - item)
        ;(ontop ?robot - robot ?box - box)
	)

  (:action move
        :parameters (?robot - robot ?from ?to - room)
        :precondition (and(adjacent ?from ?to)(at ?robot ?from))
        :effect (and(at ?robot ?to)(not (at ?robot ?from)))
  )

  )
