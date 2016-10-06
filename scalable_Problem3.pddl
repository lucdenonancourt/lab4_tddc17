(define (problem scalable3)
  (:domain Shakey)
  (:objects
    robot - robot
    room1  room2	room3	room4	room5	room6	room7	room8	room9	room10	room11	room12	room13	room14	room15	room16	room17	room18 - room
    box1  box2	box3	box4	box5	box6	box7	box8	box9 - box
    grip1 grip2 - grip
    item1  item2  item3	item4	item5	item6	item7	item8	item9	item10	item11	item12	item13	item14	item15	item16	item17	item18 - item
  )

  (:init
(at robot room1)

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

(	contains_box	box1	room2	)
(	contains_box	box2	room4	)
(	contains_box	box3	room6	)
(	contains_box	box4	room8	)
(	contains_box	box5	room10	)
(	contains_box	box6	room12	)
(	contains_box	box7	room14	)
(	contains_box	box8	room16	)
(	contains_box	box9	room18	)


(	contains_item	item1	room1	)
(	contains_item	item2	room2	)
(	contains_item	item3	room3	)
(	contains_item	item4	room4	)
(	contains_item	item5	room5	)
(	contains_item	item6	room6	)
(	contains_item	item7	room7	)
(	contains_item	item8	room8	)
(	contains_item	item9	room9	)
(	contains_item	item10	room10	)
(	contains_item	item11	room11	)
(	contains_item	item12	room12	)
(	contains_item	item13	room13	)
(	contains_item	item14	room14	)
(	contains_item	item15	room15	)
(	contains_item	item16	room16	)
(	contains_item	item17	room17	)
(	contains_item	item18	room18	)


	)

  (:goal (and(forall (?items -item) (contains_item ?items room1)))

  )
)
