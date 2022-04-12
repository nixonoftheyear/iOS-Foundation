var strings = ["Sally", "Sheldon", "Paul", "Lucha"]

class Person {
    var name:String = ""
    
    func introduceMyself() {
        print("Hi, my name is " + name)
    }
}

class Chef: Person {
    override func introduceMyself() {
        print("Hi, my name is " + super.name)
        print("I'm a Chef")
    }
}

class Poet: Person {
    override func introduceMyself() {
    print("Hi, my name is " + super.name)
    print("I'm a Poet")
    }
}

class Astronaut: Person {
    override func introduceMyself() {
    print("Hi, my name is " + super.name)
    print("I'm an Astronaut")
    }
}

for _ in 1...10 {
    var chef = Chef()
    chef.introduceMyself()
    
    var poet = Poet()
    poet.introduceMyself()
    
    var astronaut = Astronaut()
    astronaut.introduceMyself()
}
