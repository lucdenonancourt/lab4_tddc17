(define (problem problem1)
  (:domain Shakey)
  (:objects
    robot - robot
    room1 room2 room3 - room
    )

  (:init
		(at robot room1)
		(adjacent room1 room2)
    (adjacent room2 room3)
	)

  (:goal (at robot room3))
  )
