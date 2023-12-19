predicates
    animal_is(symbol)
    it_is(symbol)
    positive(symbol,symbol)
    negative(symbol,symbol)
clauses
    animal_is(cheetah) if
        it_is(mammal) and
        it_is(carnivore) and
        positive(has,tawny_color) and
        positive(has,dark_spots).
    animal_is(tiger) if
        it_is(mammal) and
        it_is(carnivore) and
        positive(has,tawny_color) and
        positive(has,black_stripes).
    animal_is(giraffe) if
        it_is(ungulate) and
        positive(has,long_neck) and
        positive(has,long_legs) and
        positive(has,dark_spots).
    animal_is(zebra) if
        it_is(ungulate) and
        positive(has,black_stripes).
    animal_is(ostrich) if
        it_is(bird) and
        negative(does,fly) and
        positive(has,long_neck) and
        positive(has,long_legs) and
        positive(has,black_and_white_color).
    animal_is(penguin) if
        it_is(bird) and
        negative(does,fly) and
        positive(does,swim) and
        positive(has,black_and_white_color).
    animal_is(albatross) if
        it_is(bird) and
        positive(does,fly_well).
    it_is(mammal) if
        positive(has,hair).
    it_is(mammal) if
        positive(does,give_milk).
        it_is (bird) if
        positive(has,feathers).
    it_is(bird) if
        positive(does,fly) and
        positive(does,lay_eggs).
    it_is(carnivore) if
        positive(does,eat_meat).
    it_is(carnivore) if
        positive(has,pointed_teeth) and
        positive(has,claws) and
        positive(has,forward_eyes).
    it_is(ungulate) if
        it_is(mammal) and
        positive(has,hooves).
    it_is(ungulate) if
        it_is(mammal) and
        positive(does,chew_cud).