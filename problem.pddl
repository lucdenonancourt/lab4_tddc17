(define (problem problem1)
  (:domain Shakey)
  (:objects
    robot - robot
    room1 room2 room3 - room
    box1 - box
    grip1 grip2 - grip
    item1 - item
    )

  (:init
    (WIDE-DOOR room1 room2)
    (WIDE-DOOR room2 room3)
		(at robot room1)
    (contains_box box1 room2)
    (contains_item item1 room3)
	)

  (:goal (contains_item item1 room1)

  )
)
