(define (problem problem2)
  (:domain Shakey)
  (:objects
    robot - robot
    room1 room2 room3 room4 room5 room6 - room
    box1 box2 box3 box4 box5 box6 - box
    grip1 grip2 - grip
    item1 item2 item3 item4 item5 - item
  )

  (:init
    (WIDE-DOOR room1 room2)
    (WIDE-DOOR room2 room3)
    (WIDE-DOOR room3 room4)
    (WIDE-DOOR room4 room5)
    (WIDE-DOOR room5 room6)
    (door room1 room6)
		(at robot room1)
    (contains_box box1 room2)
    (contains_box box2 room2)
    (contains_box box3 room2)
    (contains_box box4 room5)
    (contains_box box5 room6)
    (contains_box box6 room3)

    (contains_item item1 room3)
    (contains_item item2 room3)
    (contains_item item3 room5)
    (contains_item item4 room2)
    (contains_item item5 room1)
	)

  (:goal (and(contains_item item1 room1)(contains_item item2 room1)(contains_item item2 room1)(contains_item item3 room1)(contains_item item4 room1)(contains_item item5 room1)
          (contains_box box1 room1)(contains_box box2 room1)(contains_box box3 room1)(contains_box box4 room1)(contains_box box5 room1)(contains_box box6 room1))

  )
)
