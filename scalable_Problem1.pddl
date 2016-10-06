(define (problem scalable1)
  (:domain Shakey)
  ;We initialize all the object that we will use in this problem
  (:objects
    robot - robot
    room1  room2 room3	room4	room5	room6	room7	room8	room9	room10	room11	room12	room13	room14	room15	room16	room17	room18 - room
    box1 box2  - box
    grip1 grip2 - grip
    item1 item2 item3 item4 item5 item6 - item
  )
  ;We initialize the door beetween the room, and where the box and item are.
  (:init
  (	WIDE-DOOR	room1	room2	)
  (	WIDE-DOOR	room2 	room3	)
  (	door	room3	room4	)
  (	WIDE-DOOR	room4	room5	)
  (	WIDE-DOOR	room5	room6	)
  (	door	room6	room7	)
  (	WIDE-DOOR	room7	room8	)
  (	WIDE-DOOR	room8	room9	)
  (	door	room9	room10	)
  (	WIDE-DOOR	room10	room11	)
  (	WIDE-DOOR	room11	room12	)
  (	door	room12	room13	)
  (	WIDE-DOOR	room13	room14	)
  (	WIDE-DOOR	room14	room15	)
  (	door	room15	room16	)
  (	WIDE-DOOR	room16	room17	)
  (	WIDE-DOOR	room17	room18	)
  (at robot room1)
  (contains_box box1 room1)
  (contains_box box2 room4)

  (contains_item item1 room1)
  (contains_item item2 room2)
  (contains_item item3 room3)
  (contains_item item4 room4)
  (contains_item item5 room5)
  (contains_item item6 room6)
	)
  ;We set a goal. Here we want all the item to be in the first room.
  (:goal (and(forall (?items - item) (contains_item ?items room1)))

  )
)
