//
// Created by JohnPoison <truefiresnake@gmail.com> on 5/13/13.




#include "Boo.h"

int Boo::sCounter = 1;

Boo::Boo(Foo *foo1, Foo *foo2){
    fFoo1 = foo1;
    fFoo2 = foo2;
    mId = sCounter++;
}

void Boo::description() {
    std::cout << "Boo " << mId << " description: " << std::endl;
    fFoo1->description();
    fFoo2->description();
}


void Boo::setFoo1(Foo* foo) {
    if (fFoo1)
        delete fFoo1;

    fFoo1 = new Foo(*foo);
}

void Boo::setFoo2(Foo* foo) {
    if (fFoo2)
        delete fFoo2;

    fFoo2 = new Foo(*foo);
}

Boo::~Boo() {
    std::cout << ">>>>Boo " << mId << " desctructor: " << std::endl;

    if (fFoo1)
        delete fFoo1;
    if (fFoo2)
        delete fFoo2;
}

Boo& Boo::operator= (const Boo& boo) {
    if (this != &boo) {
        booVal1 = boo.booVal1;
        booVal2 = boo.booVal2;
        setFoo1(boo.fFoo1);
        setFoo2(boo.fFoo2);
    }

    return *this;
}

Boo& Boo::operator= (const Boo* boo) {
    return operator=(*boo);
}



