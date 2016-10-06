(define (domain shakey)
  (:requirements :strips)

  (:predicates
  ;We first declare the different types that we will use
	(robot ?robot)
  (room ?room)
	(box ?box)
	(door ?room1 ?room2)
  (wide-door ?room1 ?room2)
	(item ?item)
  (grip ?grip)
  ;The booleans predicates
	(at ?robot - robot ?room - room)
  (contains_box ?box - box ?room - room)
  (contains_item ?item - item ?room - room)
  (lit ?room - room)
  (item_gripped ?item - item ?grip - grip)
  (grip_full ?grip - grip)
	)
  ;The first action of the robot. It can move from one room to another if there is a door or a wide door
  (:action move
        :parameters (?robot - robot ?from ?to - room)
        :precondition (and(at ?robot ?from)(or (door ?from ?to)(wide-door ?from ?to)(door ?to ?from)(wide-door ?to ?from)))
        :effect (and(at ?robot ?to)(not (at ?robot ?from)))
  )
  ;The robot can move a box between two room only if there is a wide door.
  (:action move_box
        :parameters (?robot - robot ?from ?to - room ?box - box)
        :precondition (and(at ?robot ?from)(contains_box ?box ?from)(or(wide-door ?to ?from)(wide-door ?from ?to)))
        :effect (and(at ?robot ?to)(not (at ?robot ?from))(contains_box ?box ?to)(not(contains_box ?box ?from)))
  )
  ;The robot can switch a light on if there is a box in the room
  (:action switch_light_on
        :parameters (?robot - robot ?room - room ?box - box)
        :precondition (and(at ?robot ?room)(not (lit ?room))(contains_box ?box ?room))
        :effect (lit ?room)
  )
  ;The robot can switch a light off if there is a box in the room
  (:action switch_light_off
        :parameters (?robot - robot ?room - room ?box - box)
        :precondition (and(at ?robot ?room)(lit ?room)(contains_box ?box ?room))
        :effect (not(lit ?room))
  )
  ;The robot can grab a item if it as a free grip and the light in the room is on
  (:action grab_item
        :parameters (?robot - robot ?grip - grip ?room - room ?item - item)
        :precondition (and(at ?robot ?room)(lit ?room)(contains_item ?item ?room)(not(grip_full ?grip)))
        :effect (and(grip_full ?grip)(item_gripped ?item ?grip)(not(contains_item ?item ?room)))
  )

  (:action released_item
        :parameters (?robot - robot ?grip - grip ?room - room ?item - item)
        :precondition (and(at ?robot ?room)(item_gripped ?item  ?grip )(lit ?room)(grip_full ?grip))
        :effect (and(not(grip_full ?grip))(not(item_gripped ?item ?grip))(contains_item ?item ?room))
  )
)
