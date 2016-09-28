(define (domain Shakey)
  (:requirements :strips :typing)
  (:types
        robot
        box
        small_object
        light
        switch
        door
        room
        wide_door -door
        classic_door -door
  )
  (:predicates
        (adjacent ?r1 ?r2 - room)
        (hold1 ?robot - robot ?small1 - small_object)
        (hold2 ?robot - robot ?small1 ?small2 - small_object)
        (ontop ?robot - robot ?box - box)
        (at ?robot - robot ?room - room)
	)

  (:action MOVE
        :parameters (?robot - robot ?r1 ?r2 - room)
        :precondition (and(adjacent ?r1 ?r2 - room)(at ?robot - robot ?r1 - room))
        :effect (at ?robot - robot ?r2 - room)
  )

  )
