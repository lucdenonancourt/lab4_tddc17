(define (domain Shakey)
  (:requirements :strips :typing)
  
  (:predicates
        (adjacent ?r1 ?r2)
		(at ?robot ?room)
        (hold1 ?robot ?small1)
        (hold2 ?robot ?small1 ?small2)
        (ontop ?robot ?box)        
	)

  (:action move
        :parameters (?robot ?r1 ?r2)
        :precondition (and(adjacent ?r1 ?r2)(at ?robot ?r1))
        :effect (and(at ?robot ?r2)(not (at ?robot ?r1)))
  )

  )
